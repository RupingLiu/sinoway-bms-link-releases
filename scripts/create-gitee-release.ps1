[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [string] $Owner = 'rupingliu',
    [string] $Repo = 'sinoway-bms-link-releases',
    [string] $Version = '1.7.0+36',
    [string] $TagName = "android-v$Version",
    [string] $Name = "Sinoway BMS Mate $Version",
    [string] $TargetCommitish = 'main',
    [string] $BodyPath = (Join-Path $PSScriptRoot "..\docs\release-notes\android-v$Version.md"),
    [string[]] $AssetPaths = @(),
    [string] $AccessToken = $env:GITEE_ACCESS_TOKEN,
    [switch] $Prerelease,
    [switch] $UploadAssets,
    [switch] $OpenInBrowser
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-ResponseBody {
    param([object] $ErrorRecord)

    $response = $ErrorRecord.Exception.Response
    if (-not $response) {
        return $null
    }

    try {
        if ($response.Content) {
            return $response.Content
        }
    } catch {
        # Older Windows PowerShell response objects expose only a stream.
    }

    try {
        $stream = $response.GetResponseStream()
        if (-not $stream) {
            return $null
        }

        $reader = [System.IO.StreamReader]::new($stream)
        try {
            return $reader.ReadToEnd()
        } finally {
            $reader.Dispose()
        }
    } catch {
        return $null
    }
}

function Invoke-GiteeReleaseCreate {
    param(
        [string] $Uri,
        [hashtable] $Form
    )

    try {
        return Invoke-RestMethod `
            -Method Post `
            -Uri $Uri `
            -Headers @{ Accept = 'application/json' } `
            -ContentType 'application/x-www-form-urlencoded' `
            -Body $Form
    } catch {
        $detail = Get-ResponseBody -ErrorRecord $_
        if ($detail) {
            throw "Gitee API request failed: $($_.Exception.Message)`n$detail"
        }

        throw
    }
}

function Invoke-GiteeReleaseGet {
    param([string] $Uri)

    try {
        return Invoke-RestMethod `
            -Method Get `
            -Uri $Uri `
            -Headers @{ Accept = 'application/json' }
    } catch {
        $statusCode = $null
        try {
            $statusCode = [int]$_.Exception.Response.StatusCode
        } catch {
            $statusCode = $null
        }

        if ($statusCode -eq 404) {
            return $null
        }

        $detail = Get-ResponseBody -ErrorRecord $_
        if ($detail) {
            throw "Gitee API request failed: $($_.Exception.Message)`n$detail"
        }

        throw
    }
}

function Get-GiteeReleaseWebUrl {
    param([object] $Release)

    if ($Release -and $Release.PSObject.Properties.Name -contains 'html_url' -and -not [string]::IsNullOrWhiteSpace($Release.html_url)) {
        return $Release.html_url
    }

    return "https://gitee.com/$Owner/$Repo/releases/tag/$([uri]::EscapeDataString($TagName))"
}

function Get-GiteeAssetNames {
    param([object] $Release)

    if (-not $Release -or -not ($Release.PSObject.Properties.Name -contains 'assets') -or -not $Release.assets) {
        return @()
    }

    return @($Release.assets | ForEach-Object { $_.name })
}

function Invoke-GiteeAssetUpload {
    param(
        [int] $ReleaseId,
        [string] $FilePath
    )

    $uploadUri = "https://gitee.com/api/v5/repos/$Owner/$Repo/releases/$ReleaseId/attach_files"
    $file = Get-Item -LiteralPath $FilePath

    try {
        $curl = (Get-Command curl.exe -ErrorAction Stop).Source
    } catch {
        throw 'curl.exe is required for Gitee asset upload.'
    }

    $output = & $curl `
        --fail-with-body `
        --silent `
        --show-error `
        -X POST `
        $uploadUri `
        --form-string "access_token=$AccessToken" `
        -F "file=@$($file.FullName);filename=$($file.Name)" 2>&1

    $responseBody = ($output -join [Environment]::NewLine)
    if ($LASTEXITCODE -ne 0) {
        throw "Gitee asset upload failed for $($file.Name): curl exited with $LASTEXITCODE`n$responseBody"
    }

    return $responseBody | ConvertFrom-Json
}

if ([string]::IsNullOrWhiteSpace($AccessToken)) {
    throw 'Missing Gitee token. Set $env:GITEE_ACCESS_TOKEN or pass -AccessToken.'
}

$resolvedBodyPath = Resolve-Path -LiteralPath $BodyPath
$releaseBody = Get-Content -LiteralPath $resolvedBodyPath -Raw

$apiUri = "https://gitee.com/api/v5/repos/$Owner/$Repo/releases"
$existingUri = "https://gitee.com/api/v5/repos/$Owner/$Repo/releases/tags/$([uri]::EscapeDataString($TagName))?access_token=$([uri]::EscapeDataString($AccessToken))"
$form = @{
    access_token     = $AccessToken
    tag_name         = $TagName
    name             = $Name
    body             = $releaseBody
    target_commitish = $TargetCommitish
    prerelease       = if ($Prerelease.IsPresent) { 'true' } else { 'false' }
}

$repoRoot = Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')
if ($AssetPaths.Count -eq 0) {
    $AssetPaths = @(
        Join-Path $repoRoot "downloads\android\Sinoway BMS Mate $Version.apk"
        Join-Path $repoRoot "downloads\android\Sinoway BMS Mate $Version.apk.sha256"
    )
}

foreach ($assetPath in $AssetPaths) {
    if (-not (Test-Path -LiteralPath $assetPath)) {
        throw "Expected release asset does not exist: $assetPath"
    }
}

$target = "$Owner/$Repo release $TagName"
if ($PSCmdlet.ShouldProcess($target, 'Create Gitee release metadata')) {
    $release = Invoke-GiteeReleaseGet -Uri $existingUri
    if ($release) {
        $releaseUrl = Get-GiteeReleaseWebUrl -Release $release
        Write-Host "Gitee release already exists: $releaseUrl"
    } else {
        $release = Invoke-GiteeReleaseCreate -Uri $apiUri -Form $form
        $releaseUrl = Get-GiteeReleaseWebUrl -Release $release
        Write-Host "Created Gitee release metadata: $releaseUrl"
    }

    Write-Host ''
    if ($UploadAssets.IsPresent) {
        if (-not ($release.PSObject.Properties.Name -contains 'id') -or -not $release.id) {
            throw 'Gitee release response did not contain an id; cannot upload assets.'
        }

        $existingAssetNames = Get-GiteeAssetNames -Release $release
        foreach ($assetPath in $AssetPaths) {
            $asset = Get-Item -LiteralPath $assetPath
            $giteeNormalizedAssetName = $asset.Name.Replace('+', ' ')
            if ($existingAssetNames -contains $asset.Name -or $existingAssetNames -contains $giteeNormalizedAssetName) {
                Write-Host "Asset already exists, skipped: $($asset.Name)"
                continue
            }

            $uploaded = Invoke-GiteeAssetUpload -ReleaseId ([int]$release.id) -FilePath $asset.FullName
            $downloadUrl = $uploaded.browser_download_url
            if ([string]::IsNullOrWhiteSpace($downloadUrl)) {
                $downloadUrl = '<no browser_download_url returned>'
            }
            Write-Host "Uploaded asset: $($asset.Name)"
            Write-Host "  $downloadUrl"
        }

        Write-Host ''
        Write-Host 'Verify anonymous APK download before adding a Gitee mirror to the manifest.'
    } else {
        Write-Host 'Next manual step: upload these files on the Gitee release page, or rerun this script with -UploadAssets:'
        foreach ($assetPath in $AssetPaths) {
            Write-Host " - $assetPath"
        }
        Write-Host ''
        Write-Host 'After upload, verify anonymous APK download before adding a Gitee mirror to the manifest.'
    }

    if ($OpenInBrowser.IsPresent) {
        Start-Process $releaseUrl
    }
}
