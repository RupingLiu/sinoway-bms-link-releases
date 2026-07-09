# Sinoway BMS Link Android 1.9.1+50

## 简体中文

- 登录页新增显示/隐藏密码与记住密码能力，便于测试机和现场重复登录。
- 优化启动后的数据呈现，减少各页面长时间显示“正在加载”的等待感。
- 总览和设备列表显示设备号码；地图设备下拉补充关键设备信息。
- 设备详情按账号参数写权限隐藏“控制”和“记录”子页面；无写权限账号只显示“状态/单体/参数”。
- “定位”不再单独占用详情页签，定位与轨迹信息并入“状态”页下半部分。
- 自动检查更新周期由 30 分钟缩短为 5 分钟。
- 界面和当前文档不再使用额外授权流程作为控制前置概念，云端控制权限按账号参数写权限判断。

## 繁體中文

- 登入頁新增顯示/隱藏密碼與記住密碼能力，便於測試機和現場重複登入。
- 優化啟動後的資料呈現，減少各頁面長時間顯示「正在載入」的等待感。
- 總覽和設備列表顯示設備號碼；地圖設備下拉補充關鍵設備資訊。
- 設備詳情依帳號參數寫入權限隱藏「控制」和「記錄」子頁面；無寫入權限帳號只顯示「狀態/單體/參數」。
- 「定位」不再單獨占用詳情頁籤，定位與軌跡資訊併入「狀態」頁下半部分。
- 自動檢查更新週期由 30 分鐘縮短為 5 分鐘。
- 介面和目前文件不再使用額外授權流程作為控制前置概念，雲端控制權限依帳號參數寫入權限判斷。

## English

- Added password visibility and remember-password support on the login page for repeated test-device and field sign-ins.
- Improved post-launch data presentation to reduce long visible loading states across pages.
- Overview and device lists now show device numbers; the map device selector includes richer device details.
- Device details hide the Control and Records tabs unless the signed-in account has parameter write permission; read-only accounts only see Status, Cells, and Parameters.
- Location no longer consumes a separate detail tab; location and track information now lives in the lower portion of the Status page.
- Periodic update checks now run every 5 minutes instead of every 30 minutes.
- Current UI and active docs no longer use an extra authorization flow as a control prerequisite; cloud control access follows account parameter write permission.

## Assets

- APK: `sinoway-bms-link-android-v1.9.1+50.apk`
- Size: `20468455` bytes
- SHA-256: `378cf56460ddd11076fae75fa06c636b356c0e6bd6e1447ccff6c385d9df5536`

The current manifest uses the Gitee release attachment as the primary APK download source. GitHub Release assets remain in `downloadMirrors` as the backup endpoint.
