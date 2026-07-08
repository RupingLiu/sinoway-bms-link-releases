# Sinoway BMS Link Android 1.8.8+47

## 简体中文

- 蓝牙入口改为按参数写权限显示：只有 `setBMSParameters`、`parameterWrite` 或 `super_admin` 账号可以看到蓝牙页。
- 普通运营员、观察员等只读权限账号不再显示底部“蓝牙”页签，直接访问蓝牙路由会回到总览。
- 权限变化或离开蓝牙页后会释放蓝牙控制器，尽量停止扫描、断开连接并取消订阅。
- 保留原有设备绑定规则：进入蓝牙页后仍按 `bluetoothAddress` / `bluetoothName` 判断当前账号设备或未绑定只读。

## 繁體中文

- 藍牙入口改為依參數寫入權限顯示：只有 `setBMSParameters`、`parameterWrite` 或 `super_admin` 帳號可以看到藍牙頁。
- 普通營運員、觀察員等唯讀權限帳號不再顯示底部「藍牙」頁籤，直接訪問藍牙路由會回到總覽。
- 權限變更或離開藍牙頁後會釋放藍牙控制器，盡量停止掃描、斷開連線並取消訂閱。
- 保留原有設備綁定規則：進入藍牙頁後仍依 `bluetoothAddress` / `bluetoothName` 判斷目前帳號設備或未綁定唯讀。

## English

- Bluetooth maintenance is now visible only for accounts with parameter-write access: `setBMSParameters`, `parameterWrite`, or `super_admin`.
- Read-only operator and observer accounts no longer see the bottom Bluetooth tab, and direct Bluetooth routes return to Overview.
- The Bluetooth controller is disposed after access changes or after leaving the Bluetooth page, with best-effort scan stop, disconnect, and subscription cleanup.
- Existing device binding behavior remains unchanged: inside Bluetooth, `bluetoothAddress` / `bluetoothName` still decide whether a device belongs to the account or is unbound read-only.

## Assets

- APK: `sinoway-bms-link-android-v1.8.8+47.apk`
- Size: `20337035` bytes
- SHA-256: `d0dee548b302de5cc1c4965fca7980ee4fecefad894c79d6a4a572dedc10260e`

The current manifest uses the Gitee release attachment as the primary APK download source. GitHub Release assets remain in `downloadMirrors` as the backup endpoint.
