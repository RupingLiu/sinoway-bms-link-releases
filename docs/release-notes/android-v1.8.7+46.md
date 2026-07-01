# Sinoway BMS Link Android 1.8.7+46

## 简体中文

- 修复蓝牙直连设备断开后重新扫描仍被旧地址过滤的问题：直连地址在连接成功或断开后会自动清空。
- 修复蓝牙搜索框与内部过滤状态不同步的问题，断开直连设备后重新扫描会显示附近全部可发现蓝牙设备。
- 保留未绑定设备只读模式：未匹配当前账号的蓝牙设备仍可连接读取，但参数写入、设备信息写入、控制命令和自动连接保存保持禁用。

## 繁體中文

- 修復藍牙直連設備斷開後重新掃描仍被舊地址過濾的問題：直連地址在連接成功或斷開後會自動清空。
- 修復藍牙搜尋框與內部過濾狀態不同步的問題，斷開直連設備後重新掃描會顯示附近全部可發現藍牙設備。
- 保留未綁定設備唯讀模式：未匹配目前帳號的藍牙設備仍可連接讀取，但參數寫入、設備資訊寫入、控制命令與自動連接保存保持停用。

## English

- Fixed Bluetooth rescans after disconnecting from a direct-address connection: the one-shot direct address is cleared after a successful connection or disconnect.
- Fixed the Bluetooth search field getting out of sync with the internal scan filter, so rescanning after a direct-address disconnect shows all nearby discoverable BLE devices.
- Preserved unmatched-device read-only mode: Bluetooth devices not matched to the current account can still connect for reads, while parameter writes, device-info writes, control commands, and auto-connect saving remain disabled.

## Assets

- APK: `sinoway-bms-link-android-v1.8.7+46.apk`
- Size: `20337035` bytes
- SHA-256: `3fdc74e1d5b83939df6dbbd7104855adf18df009b58d00628ec7a7c4ad9a7d08`

The current manifest uses the Gitee release attachment as the primary APK download source. GitHub Release assets remain in `downloadMirrors` as the backup endpoint.
