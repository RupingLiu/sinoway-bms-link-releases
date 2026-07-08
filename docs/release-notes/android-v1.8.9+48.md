# Sinoway BMS Link Android 1.8.9+48

## 简体中文

- 设备页分组下拉改为按云平台客户树层级展示，移除多余的“全部分组”。
- 分组下拉从筛选栏下方展开，不再从屏幕底部弹出。
- 默认只展开 `admin` 下一级分组；例如 `测试01` 默认收起，点击 `测试` 后再显示。
- 修复 `admin (0/70)` 这类父级统计错误展示，父级按子树和直属设备聚合展示在线/总数。
- 移除设备列表、总览和详情页中的多余 SN、云平台连接等文案，设备优先显示名称/站点和分组信息。

## 繁體中文

- 設備頁分組下拉改為依雲平台客戶樹層級展示，移除多餘的「全部分組」。
- 分組下拉從篩選欄下方展開，不再從螢幕底部彈出。
- 預設只展開 `admin` 下一級分組；例如 `測試01` 預設收起，點擊 `測試` 後再顯示。
- 修復 `admin (0/70)` 這類父級統計錯誤展示，父級依子樹與直屬設備彙總展示在線/總數。
- 移除設備列表、總覽與詳情頁中的多餘 SN、雲平台連線等文案，設備優先顯示名稱/站點與分組資訊。

## English

- The device group picker now follows the cloud customer-tree hierarchy and removes the redundant all-groups bucket.
- The picker opens below the filter field instead of sliding up from the bottom of the screen.
- Only the first level under `admin` is expanded by default; child groups such as `测试01` appear after expanding their parent.
- Parent count display is aggregated from child groups and direct devices, avoiding stale parent counts such as `admin (0/70)`.
- Removed redundant SN and cloud-connection text from device list, overview, and detail views so devices prioritize name/site and group information.

## Assets

- APK: `sinoway-bms-link-android-v1.8.9+48.apk`
- Size: `20337067` bytes
- SHA-256: `dd1b22709281874080a86a2f27bf738ffe0cf77f6ed52dd9ead7811d4c986fe5`

The current manifest uses the Gitee release attachment as the primary APK download source. GitHub Release assets remain in `downloadMirrors` as the backup endpoint.
