# Sinoway BMS Link Android 1.8.4+43

## 简体中文

- 修复蓝牙近场维护参数写入：额定容量等基础设置现在按设备协议成对写入 `0x1007-0x1008`。
- 蓝牙连接态下，参数和控制写入不再套用 4G/云端账号权限；只要已连接设备，即可按协议边界写入。
- 修复 5 秒自动读取持续占用忙态导致写入按钮长期不可用的问题。

## 繁體中文

- 修復藍牙近場維護參數寫入：額定容量等基礎設定現在會依設備協議成對寫入 `0x1007-0x1008`。
- 藍牙連線狀態下，參數與控制寫入不再套用 4G/雲端帳號權限；只要已連線設備，即可依協議邊界寫入。
- 修復 5 秒自動讀取持續佔用忙碌狀態，導致寫入按鈕長時間不可用的問題。

## English

- Fixed Bluetooth near-field parameter writes: basic settings such as rated capacity now use the device-required paired `0x1007-0x1008` write.
- Bluetooth parameter and control writes no longer reuse 4G/cloud role checks once a device is connected; writes are allowed within protocol bounds.
- Fixed the 5-second auto-read loop keeping the page busy and leaving write buttons unavailable for too long.

## Assets

- APK: `sinoway-bms-link-android-v1.8.4+43.apk`
- Size: `20271427` bytes
- SHA-256: `e1250743a355d000a5214acc3543a168148d7aaf697db65332b61529afa5f887`

The current manifest uses the Gitee release attachment as the primary APK download source. GitHub Release assets remain in `downloadMirrors` as the backup endpoint.
