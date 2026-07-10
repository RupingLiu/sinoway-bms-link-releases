# Sinoway BMS Link Android 1.11.2+54

## 简体中文

- 工程师蓝牙维护不再依赖云端 `bluetoothAddress` 或 `bluetoothName` 绑定字段；可尝试连接附近任意 BLE 设备，连接成功后仍按 GATT 和协议点读写权限执行。
- 扫描页显示手机周围所有系统可见的 BLE 广播设备，`SWD-` 设备优先排列，其余设备按 RSSI 展示。
- 精简蓝牙扫描页：顶部只保留搜索与扫描主操作；设备行改为整行连接，移除重复的大号“连接”按钮；完整地址才显示直连图标。
- 自动连接按账号隔离保存，避免不同账号之间串用设备目标。

## 繁體中文

- 工程師藍牙維護不再依賴雲端 `bluetoothAddress` 或 `bluetoothName` 綁定欄位；可嘗試連接附近任意 BLE 裝置，連接成功後仍依 GATT 與協定點讀寫權限執行。
- 掃描頁顯示手機周圍所有系統可見的 BLE 廣播裝置，`SWD-` 裝置優先排列，其餘裝置依 RSSI 顯示。
- 精簡藍牙掃描頁：頂部只保留搜尋與掃描主操作；裝置列改為整列連接，移除重複的大型「連接」按鈕；完整位址才顯示直連圖示。
- 自動連接依帳號隔離保存，避免不同帳號之間共用裝置目標。

## English

- Engineer Bluetooth maintenance no longer depends on cloud `bluetoothAddress` or `bluetoothName` bindings. Any nearby BLE device can be attempted; successful connections still follow GATT and per-point protocol access rules.
- The scan page shows all BLE advertisements visible to the phone, prioritizes `SWD-` devices, and lists other devices by RSSI.
- Simplified the Bluetooth scan UI: one search field and one scan action, row-tap connection with no repeated large Connect buttons, and direct-connect only for a complete address.
- Auto-connect targets are stored per account to prevent cross-account reuse.

## Assets

- APK: `sinoway-bms-link-android-v1.11.2+54.apk`
- Size: `20665151` bytes
- SHA-256: `90f1ad85c7c8b87a5d0fed6c9ea67003afedb189340f37a7e826b41c0ad6532a`
