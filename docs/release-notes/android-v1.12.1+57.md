# Sinoway BMS Mate 1.12.1+57

## 简体中文

- 设备详情的“状态”“单体”“控制”子页在前台可见时每 15 秒读取一次实时数据，并支持下拉立即刷新；切到后台会暂停刷新，避免无效请求。
- 控制页的定时刷新仅查询命令记录，不会自动下发参数配置或动作控制。
- 修复切换账号、退出登录或会话失效后仍保留旧账号筛选类目的问题；账号级的列表、地图和告警筛选会及时清理。
- 告警列表的故障信息在当前账号可见且能匹配设备时，可直接进入对应设备详情；返回后保留原告警筛选状态。
- 优化设备详情的实时读取去重、缓存与刷新状态衔接，减少首屏和手动刷新等待。

## 繁體中文

- 裝置詳情的「狀態」「單體」「控制」子頁在前景可見時每 15 秒讀取一次即時資料，並支援下拉立即重新整理；切到背景會暫停重新整理，避免無效請求。
- 控制頁的定時重新整理僅查詢命令記錄，不會自動下發參數設定或動作控制。
- 修正切換帳號、登出或工作階段失效後仍保留舊帳號篩選類目的問題；帳號層級的清單、地圖和告警篩選會及時清理。
- 告警清單的故障資訊在目前帳號可見且可匹配裝置時，可直接進入對應裝置詳情；返回後保留原告警篩選狀態。
- 最佳化裝置詳情的即時讀取去重、快取與重新整理狀態銜接，減少首屏和手動重新整理等待。

## English

- Status, Cells, and Control tabs refresh live data every 15 seconds while visible and support immediate pull-to-refresh; refreshing pauses in the background to avoid unnecessary requests.
- Control polling reads command records only. It never sends parameter settings or control actions automatically.
- Fixed stale account-specific filters after account switching, sign-out, or session expiration across lists, maps, and alarms.
- An alarm item now opens its matching device details when that device is visible to the current account; returning keeps the original alarm filters.
- Improved live-read deduplication, caching, and refresh-state handling in device details to reduce initial and manual-refresh waiting.

## Assets

- Gitee APK: `Sinoway BMS Mate 1.12.1 57.apk`
- GitHub APK: `Sinoway.BMS.Mate.1.12.1+57.apk`
- Size: `21046289` bytes
- SHA-256: `15b514f9044841f8baaec592d70e6425044377f79be259bb3cbcb0cf222b6abe`

The manifest uses the verified Gitee release attachment as the primary APK download source and keeps the GitHub Release asset as the backup mirror.
