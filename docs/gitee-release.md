# Gitee Release Publishing

This repository is mirrored to both Gitee and GitHub, but a Git tag is not the
same thing as a Gitee release. Pushing `android-v1.7.0+36` makes the tag visible
under the repository activity and tags pages, but the sidebar "发行版" section
stays empty until a Gitee release object is created separately.

References:

- Gitee release creation help: <https://help.gitee.com/repository/release/create>
- Gitee release CLI: <https://gitee.com/gitee-frontend/gitee-release-cli>

## Current Android Release

- Version: `1.7.0+36`
- Tag: `android-v1.7.0+36`
- Title: `Sinoway BMS Link Android 1.7.0+36`
- APK: `downloads/android/sinoway-bms-link-android-v1.7.0+36.apk`
- SHA-256 file: `downloads/android/sinoway-bms-link-android-v1.7.0+36.apk.sha256`
- SHA-256: `66f062f2052717d41dc97d07ae0b2936177b56e58c36f0102a6d45f8a87d8ce6`
- Size: `20140267` bytes

Gitee raw asks anonymous users to log in before downloading the APK large file,
but the Gitee release attachment has been verified to download anonymously. For
that reason, the manifest uses the Gitee release attachment as the primary APK
download URL and keeps the GitHub Release asset as the backup mirror.

## Manual Gitee Steps

1. Open <https://gitee.com/rupingliu/sinoway-bms-link-releases>.
2. In the right sidebar, click `创建` under `发行版`.
3. Click `+ 创建发行版`.
4. Select or enter the tag `android-v1.7.0+36`.
5. Select branch `main` if Gitee asks for a branch containing the release.
6. Set the title to `Sinoway BMS Link Android 1.7.0+36`.
7. Paste the body from `docs/release-notes/android-v1.7.0+36.md`.
8. Attach these two files:
   - `downloads/android/sinoway-bms-link-android-v1.7.0+36.apk`
   - `downloads/android/sinoway-bms-link-android-v1.7.0+36.apk.sha256`
9. Publish the release.
10. Copy the Gitee attachment download URL and test it in a logged-out browser
    or with `Invoke-WebRequest`.

If the Gitee attachment URL changes or a future release is published, verify
anonymous download and SHA-256 before adding it to `downloadUrl` and
`downloadMirrors` in these files:

- `manifest/latest.json`
- `manifest/platforms/android.json`
- `manifest/releases/android/1.7.0+36.json`

Keep the GitHub Release asset as a backup `downloadMirrors` entry unless there
is a reason to disable it.

## Token-Based Metadata Creation

The script below creates the Gitee release metadata. Add `-UploadAssets` to
upload the APK and `.sha256` files through the Gitee attachment API.

Create a Gitee personal access token with repository write permission, then run:

```powershell
$env:GITEE_ACCESS_TOKEN = 'paste-token-here'
.\scripts\create-gitee-release.ps1
```

Create or reuse the release and upload assets:

```powershell
.\scripts\create-gitee-release.ps1 -UploadAssets
```

Use PowerShell `-WhatIf` first if you only want to preview the API action:

```powershell
.\scripts\create-gitee-release.ps1 -WhatIf
```

After upload, verify anonymous download before changing any manifest URL. Gitee
currently normalizes `+` to a space in uploaded attachment file names, so always
use the actual `browser_download_url` returned by Gitee.
