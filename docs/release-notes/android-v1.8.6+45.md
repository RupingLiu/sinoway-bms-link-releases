# Sinoway BMS Link Android 1.8.6+45

## 简体中文

- 新增蓝牙账号设备匹配：扫描列表会标记“当前账号设备”或“未绑定只读”，匹配设备保留完整近场维护能力。
- 新增未匹配设备只读模式：后台暂未返回蓝牙地址/名称时仍可连接 BMS 读取实时状态、BMS 告警、参数和设备信息，但禁止参数写入、设备信息写入、控制命令和自动连接保存。
- 修复正式包蓝牙 GATT 配置：Android release 构建使用现场验证通过的 `FEE7/FEC1` 服务与特征值，并启用 `writeWithoutResponse`，确保 `SWD-182511140110` 类 BMS 板可正常通信。

## 繁體中文

- 新增藍牙帳號設備匹配：掃描列表會標記「目前帳號設備」或「未綁定唯讀」，匹配設備保留完整近場維護能力。
- 新增未匹配設備唯讀模式：後台暫未返回藍牙地址/名稱時仍可連接 BMS 讀取即時狀態、BMS 告警、參數與設備資訊，但禁止參數寫入、設備資訊寫入、控制命令與自動連接保存。
- 修復正式包藍牙 GATT 設定：Android release 構建使用現場驗證通過的 `FEE7/FEC1` 服務與特徵值，並啟用 `writeWithoutResponse`，確保 `SWD-182511140110` 類 BMS 板可正常通訊。

## English

- Added Bluetooth account-device matching: scan results now show whether a device belongs to the current account or is available in unbound read-only mode, while matched devices keep full local maintenance capability.
- Added read-only mode for unmatched Bluetooth devices: when the backend does not yet return Bluetooth address/name fields, the app can still connect and read realtime status, BMS alarms, parameters, and device information, but parameter writes, device-info writes, control commands, and auto-connect saving are disabled.
- Fixed release Bluetooth GATT configuration: Android release builds now use the field-verified `FEE7/FEC1` service and characteristic with `writeWithoutResponse`, allowing `SWD-182511140110`-style BMS boards to communicate normally.

## Assets

- APK: `sinoway-bms-link-android-v1.8.6+45.apk`
- Size: `20337035` bytes
- SHA-256: `73714d2ebabc79d6ced52ce3f945e31dc39115e075bbb1696d7eb9395b0e2559`

The current manifest uses the Gitee release attachment as the primary APK download source. GitHub Release assets remain in `downloadMirrors` as the backup endpoint.
