# Sinoway BMS Link Android 1.6.1+35

## 简体中文

新增 Gitee 与 GitHub 双发布地址。国内构建默认从 Gitee manifest 检查版本，并优先下载已验证可匿名访问的 Gitee 发行版 APK 附件。

App 更新 manifest 支持 `downloadMirrors`，GitHub Release 附件保留为公开备份下载入口。

## 繁體中文

新增 Gitee 與 GitHub 雙發布地址。中國內地建置預設從 Gitee manifest 檢查版本，並優先下載已驗證可匿名訪問的 Gitee 發行版 APK 附件。

App 更新 manifest 支援 `downloadMirrors`，GitHub Release 附件保留為公開備份下載入口。

## English

Added dual Gitee and GitHub release endpoints. Mainland China builds now default
to checking the Gitee manifest and prefer the verified anonymous Gitee release
APK attachment.

Update manifests support `downloadMirrors`, with GitHub Release assets kept as
the public backup download endpoint.

## Assets

- APK: `sinoway-bms-link-android-v1.6.1+35.apk`
- Size: `20140211` bytes
- SHA-256: `a7bf16d8ecdd91b5458b9590a5b95bbd059dfb77855e7f200b65a7c9de9b0cc2`

The current manifest uses the Gitee release attachment as the primary APK
download source because anonymous download has been verified. GitHub Release
assets remain in `downloadMirrors` as the backup endpoint.
