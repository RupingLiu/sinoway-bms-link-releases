# Sinoway BMS Link Android 1.8.5+44

## 简体中文

- 修复远程平台账号分类：登录和冷启动后按后台 `currentUserInfo` 的 `roles` 与 `buttons` 刷新账号能力，`ceshi01` 不再误显示为观察者。
- 修复远程参数页读取：参数定义列表会合并后台返回的当前值，“读取当前组”能显示测试板当前额定容量等参数。
- 修复远程参数写入：保持文档要求的 `setParameterData` 请求体，并兼容后台实际接受的电池编号，额定容量可通过后台 API 模式写入。

## 繁體中文

- 修復遠端平台帳號分類：登入與冷啟動後依後台 `currentUserInfo` 的 `roles` 與 `buttons` 刷新帳號能力，`ceshi01` 不再誤顯示為觀察者。
- 修復遠端參數頁讀取：參數定義列表會合併後台返回的目前值，「讀取目前組」能顯示測試板目前額定容量等參數。
- 修復遠端參數寫入：保持文件要求的 `setParameterData` 請求體，並相容後台實際接受的電池編號，額定容量可透過後台 API 模式寫入。

## English

- Fixed remote platform account classification: login and cold start now refresh account capabilities from backend `currentUserInfo` `roles` and `buttons`, so `ceshi01` is no longer shown as an observer.
- Fixed remote parameter reads: the parameter definition list now merges backend current values, and "read current group" can show the test board's current rated capacity and related parameters.
- Fixed remote parameter writes: `setParameterData` keeps the documented request body while also using the battery identifier accepted by the live backend, allowing rated capacity to be written through backend API mode.

## Assets

- APK: `sinoway-bms-link-android-v1.8.5+44.apk`
- Size: `20271427` bytes
- SHA-256: `ef9c12dd9e557f6650eba97107caac9b9f801ed345d1278bef7ceb77d2f0fb69`

The current manifest uses the Gitee release attachment as the primary APK download source. GitHub Release assets remain in `downloadMirrors` as the backup endpoint.
