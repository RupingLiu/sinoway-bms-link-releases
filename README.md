# Sinoway BMS Link Releases

## 简体中文

这是 Sinoway BMS Link 手机 APP 的公开发布仓库，仅用于发布安装包、版本清单和更新说明，不是源码仓库。

### 当前支持

- Android：支持 release APK 下载和 internal/GitHub 构建内的“检查更新”。
- iOS：后续通过 TestFlight 或 App Store 开放。
- HarmonyOS：后续完成平台适配后开放。

### 下载与安装

1. 打开本仓库的 Releases 页面。
2. 下载最新的 `sinoway-bms-link-android-*.apk`。
3. 在 Android 设备上安装 APK。
4. 如系统提示“安装未知来源应用”，请仅在确认来源为本仓库时授权。

### App 内更新

internal/GitHub 构建启动后会自动检查并下载可用 APK 更新包；用户仍需在“我的 > 检查更新”中点击“安装更新包”并确认系统安装器。应用商店构建不会从本仓库下载 APK。

### 版本规则

版本号使用 `x.y.z+build`。`x.y.z` 是产品语义版本，`+build` 只是安装包构建号：

- `x`：重大架构变化或产品方向上的破坏性调整。
- `y`：用户可见的功能新增。
- `z`：Bug 修复。包括数据显示错误、接口字段映射、崩溃、兼容性、文案错字等修正，但不新增功能。
- `build`：构建号，Android 对应 `versionCode`，只用于安装包升级判定。

### 安全提示

- 只从 `RupingLiu/sinoway-bms-link-releases` 下载 APK。
- 安装前可核对 Release 中提供的 SHA-256。
- 本仓库 APK 不应包含生产密钥、地图服务 token、客户数据或设备敏感凭据。

## 繁體中文

這是 Sinoway BMS Link 手機 APP 的公開發布倉庫，僅用於發布安裝包、版本清單和更新說明，不是源碼倉庫。

### 目前支援

- Android：支援 release APK 下載，以及 internal/GitHub 建置中的「檢查更新」。
- iOS：後續透過 TestFlight 或 App Store 開放。
- HarmonyOS：後續完成平台適配後開放。

### 下載與安裝

1. 開啟本倉庫的 Releases 頁面。
2. 下載最新的 `sinoway-bms-link-android-*.apk`。
3. 在 Android 裝置上安裝 APK。
4. 如系統提示「安裝未知來源應用」，請只在確認來源為本倉庫時授權。

### App 內更新

internal/GitHub 建置啟動後會自動檢查並下載可用 APK 更新包；使用者仍需在「我的 > 檢查更新」中點擊「安裝更新包」並確認系統安裝器。應用商店建置不會從本倉庫下載 APK。

### 版本規則

版本號使用 `x.y.z+build`。`x.y.z` 是產品語義版本，`+build` 只是安裝包建置號：

- `x`：重大架構變更或產品方向上的破壞性調整。
- `y`：使用者可見的功能新增。
- `z`：Bug 修復。包含資料顯示錯誤、介面欄位映射、崩潰、相容性、文案錯字等修正，但不新增功能。
- `build`：建置號，Android 對應 `versionCode`，只用於安裝包升級判定。

### 安全提示

- 只從 `RupingLiu/sinoway-bms-link-releases` 下載 APK。
- 安裝前可核對 Release 中提供的 SHA-256。
- 本倉庫 APK 不應包含生產密鑰、地圖服務 token、客戶資料或裝置敏感憑證。

## English

This is the public release repository for the Sinoway BMS Link mobile app. It is used only for install packages, version manifests, and release notes. It is not the source code repository.

### Current Support

- Android: release APK downloads and manual update checks in internal/GitHub builds.
- iOS: future releases will be available through TestFlight or the App Store.
- HarmonyOS: future releases will be available after platform adaptation.

### Download and Installation

1. Open the Releases page of this repository.
2. Download the latest `sinoway-bms-link-android-*.apk`.
3. Install the APK on an Android device.
4. If Android asks for permission to install unknown apps, allow it only after confirming this repository is the source.

### In-App Updates

Internal/GitHub builds automatically check for and download available APK updates after startup. Users still need to open "Profile > Check for updates", tap "Install update", and confirm the system installer. App store builds do not download APK files from this repository.

### Versioning

Versions use `x.y.z+build`. `x.y.z` is the product semantic version, and `+build` is only the install package build number:

- `x`: major architecture or product direction changes.
- `y`: user-visible feature additions.
- `z`: bug fixes, including data display defects, API field mapping, crashes, compatibility fixes, and copy typo corrections, without adding features.
- `build`: build number, mapped to Android `versionCode`, used only for install-package upgrade checks.

### Security Notes

- Download APK files only from `RupingLiu/sinoway-bms-link-releases`.
- Verify the SHA-256 value provided in each Release before installing when needed.
- APK files published here must not contain production secrets, map service tokens, customer data, or device-sensitive credentials.
