# Sinoway BMS Link Releases

## 简体中文

这是 Sinoway BMS Link 手机 APP 的公开发布仓库，仅用于发布安装包、版本清单和更新说明，不是源码仓库。

发布地址：

- Gitee：`https://gitee.com/rupingliu/sinoway-bms-link-releases`，用于国内 manifest、仓库、tag 镜像和已验证的发行版 APK 附件下载。
- GitHub：`https://github.com/RupingLiu/sinoway-bms-link-releases`，用于公开 Release 备份附件下载。

### 当前支持

- Android：支持 release APK 下载和 internal Gitee/GitHub 构建内的“检查更新”。
- iOS：后续通过 TestFlight 或 App Store 开放。
- HarmonyOS：后续完成平台适配后开放。

### 下载与安装

1. 打开 Gitee 发行版页面下载 APK；如 Gitee 不可用，可改用 GitHub Releases 备份入口。
2. 下载最新的 `Sinoway BMS Mate <版本号>.apk`。
3. 在 Android 设备上安装 APK。
4. 如系统提示“安装未知来源应用”，请仅在确认来源为本仓库时授权。

### App 内更新

internal Gitee/GitHub 构建启动后会自动检查并下载可用 APK 更新包；用户仍需在“我的 > 检查更新”中点击“安装更新包”并确认系统安装器。当前 Gitee raw 对 APK 大文件匿名下载会要求登录，因此 App 的 APK 下载主链接使用已验证可匿名访问的 Gitee 发行版附件，并保留 GitHub Release 附件作为备份。应用商店构建不会从本仓库下载 APK。

### Gitee 发行版

Gitee 的“发行版”不会因为 push tag 自动出现，需要单独创建发行版对象并上传附件。操作步骤、当前 `1.6.1+35` 的标题、正文和附件清单见 [`docs/gitee-release.md`](docs/gitee-release.md)。

### 版本规则

版本号使用 `x.y.z+build`。`x.y.z` 是产品语义版本，`+build` 只是安装包构建号：

- `x`：重大架构变化或产品方向上的破坏性调整。
- `y`：用户可见的功能新增。
- `z`：Bug 修复。包括数据显示错误、接口字段映射、崩溃、兼容性、文案错字等修正，但不新增功能。
- `build`：构建号，Android 对应 `versionCode`，只用于安装包升级判定。

### 安全提示

- 只从 `gitee.com/rupingliu/sinoway-bms-link-releases` 或 `github.com/RupingLiu/sinoway-bms-link-releases` 的 Release 附件下载 APK。
- 安装前可核对 Release 中提供的 SHA-256。
- 本仓库 APK 不应包含生产密钥、地图服务 token、客户数据或设备敏感凭据。

## 繁體中文

這是 Sinoway BMS Link 手機 APP 的公開發布倉庫，僅用於發布安裝包、版本清單和更新說明，不是源碼倉庫。

發布地址：

- Gitee：`https://gitee.com/rupingliu/sinoway-bms-link-releases`，用於中國內地 manifest、倉庫、tag 鏡像和已驗證的發行版 APK 附件下載。
- GitHub：`https://github.com/RupingLiu/sinoway-bms-link-releases`，用於公開 Release 備份附件下載。

### 目前支援

- Android：支援 release APK 下載，以及 internal Gitee/GitHub 建置中的「檢查更新」。
- iOS：後續透過 TestFlight 或 App Store 開放。
- HarmonyOS：後續完成平台適配後開放。

### 下載與安裝

1. 開啟 Gitee 發行版頁面下載 APK；如 Gitee 不可用，可改用 GitHub Releases 備份入口。
2. 下載最新的 `Sinoway BMS Mate <版本號>.apk`。
3. 在 Android 裝置上安裝 APK。
4. 如系統提示「安裝未知來源應用」，請只在確認來源為本倉庫時授權。

### App 內更新

internal Gitee/GitHub 建置啟動後會自動檢查並下載可用 APK 更新包；使用者仍需在「我的 > 檢查更新」中點擊「安裝更新包」並確認系統安裝器。目前 Gitee raw 對 APK 大文件匿名下載會要求登入，因此 App 的 APK 下載主鏈接使用已驗證可匿名訪問的 Gitee 發行版附件，並保留 GitHub Release 附件作為備份。應用商店建置不會從本倉庫下載 APK。

### Gitee 發行版

Gitee 的「發行版」不會因為 push tag 自動出現，需要單獨建立發行版物件並上傳附件。操作步驟、目前 `1.6.1+35` 的標題、正文和附件清單見 [`docs/gitee-release.md`](docs/gitee-release.md)。

### 版本規則

版本號使用 `x.y.z+build`。`x.y.z` 是產品語義版本，`+build` 只是安裝包建置號：

- `x`：重大架構變更或產品方向上的破壞性調整。
- `y`：使用者可見的功能新增。
- `z`：Bug 修復。包含資料顯示錯誤、介面欄位映射、崩潰、相容性、文案錯字等修正，但不新增功能。
- `build`：建置號，Android 對應 `versionCode`，只用於安裝包升級判定。

### 安全提示

- 只從 `gitee.com/rupingliu/sinoway-bms-link-releases` 或 `github.com/RupingLiu/sinoway-bms-link-releases` 的 Release 附件下載 APK。
- 安裝前可核對 Release 中提供的 SHA-256。
- 本倉庫 APK 不應包含生產密鑰、地圖服務 token、客戶資料或裝置敏感憑證。

## English

This is the public release repository for the Sinoway BMS Link mobile app. It is used only for install packages, version manifests, and release notes. It is not the source code repository.

Release endpoints:

- Gitee: `https://gitee.com/rupingliu/sinoway-bms-link-releases`, used for mainland China manifests, repository content, tag mirrors, and verified release APK asset downloads.
- GitHub: `https://github.com/RupingLiu/sinoway-bms-link-releases`, used for public backup Release asset downloads.

### Current Support

- Android: release APK downloads and manual update checks in internal Gitee/GitHub builds.
- iOS: future releases will be available through TestFlight or the App Store.
- HarmonyOS: future releases will be available after platform adaptation.

### Download and Installation

1. Open the Gitee Releases page to download the APK. If Gitee is unavailable, use the GitHub Releases backup endpoint.
2. Download the latest `Sinoway BMS Mate <version>.apk`.
3. Install the APK on an Android device.
4. If Android asks for permission to install unknown apps, allow it only after confirming this repository is the source.

### In-App Updates

Internal Gitee/GitHub builds automatically check for and download available APK updates after startup. Users still need to open "Profile > Check for updates", tap "Install update", and confirm the system installer. Gitee raw currently requires login for anonymous APK large-file downloads, so the app uses the verified anonymous Gitee release attachment as the primary APK download link and keeps GitHub Release assets as the backup. App store builds do not download APK files from this repository.

### Gitee Releases

Gitee Releases are not created automatically when tags are pushed. Create a separate release object and upload the assets there. See [`docs/gitee-release.md`](docs/gitee-release.md) for the current `1.6.1+35` title, body, assets, and steps.

### Versioning

Versions use `x.y.z+build`. `x.y.z` is the product semantic version, and `+build` is only the install package build number:

- `x`: major architecture or product direction changes.
- `y`: user-visible feature additions.
- `z`: bug fixes, including data display defects, API field mapping, crashes, compatibility fixes, and copy typo corrections, without adding features.
- `build`: build number, mapped to Android `versionCode`, used only for install-package upgrade checks.

### Security Notes

- Download APK files only from Release assets under `gitee.com/rupingliu/sinoway-bms-link-releases` or `github.com/RupingLiu/sinoway-bms-link-releases`.
- Verify the SHA-256 value provided in each Release before installing when needed.
- APK files published here must not contain production secrets, map service tokens, customer data, or device-sensitive credentials.
