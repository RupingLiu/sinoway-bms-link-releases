# Sinoway BMS Mate 1.12.7+63

## 简体中文

- 补齐并统一简体中文、繁体中文和英文文本资源，覆盖地图、设备参数、单体摘要、告警与记录、控制命令、登录错误和蓝牙维护界面。
- 修复切换为英文后云端参数名、告警名、历史摘要、蓝牙协议点位、分组、备注、设备信息字段和错误提示仍显示中文的问题。
- 云端或设备返回未知中文技术名称时，英文界面会安全回退到参数编码或寄存器地址，不再泄漏中文协议原文；繁体界面会转换为对应繁体术语。
- 保持现有简体中文参数分组、保护项名称和枚举显示习惯，避免本地化修复改变原有操作流程。
- 新增三语资源完整性和动态协议文本防回归测试，持续检查三份资源键一致、英文技术文本无中文残留、繁体技术文本无简体专用字。

## 繁體中文

- 補齊並統一簡體中文、繁體中文及英文文字資源，涵蓋地圖、設備參數、單體摘要、告警與記錄、控制指令、登入錯誤及藍牙維護介面。
- 修復切換為英文後，雲端參數名稱、告警名稱、歷史摘要、藍牙協議點位、群組、備註、設備資訊欄位及錯誤提示仍顯示中文的問題。
- 當雲端或設備傳回未知中文技術名稱時，英文介面會安全回退至參數編碼或暫存器位址，不再顯示中文協議原文；繁體介面會轉換為對應繁體術語。
- 維持既有簡體中文參數群組、保護項目名稱及列舉顯示習慣，避免本地化修復改變原有操作流程。
- 新增三語資源完整性與動態協議文字防回歸測試，持續檢查三份資源鍵一致、英文技術文字無中文殘留、繁體技術文字無簡體專用字。

## English

- Completed and unified Simplified Chinese, Traditional Chinese, and English resources across maps, device parameters, cell summaries, alarms and records, control commands, sign-in errors, and Bluetooth maintenance screens.
- Fixed cloud parameter names, alarm names, history summaries, Bluetooth protocol points, groups, remarks, device-information fields, and error messages remaining in Chinese after switching the app to English.
- Unknown Chinese technical labels returned by the cloud or device now fall back safely to a parameter code or register address in English instead of exposing the source schema; Traditional Chinese receives converted technical terminology.
- Preserved existing Simplified Chinese parameter grouping, protection labels, enum wording, and operation flow while adding the missing locales.
- Added localization integrity and dynamic protocol regression coverage for matching resource keys, Chinese-free English technical labels, and Traditional Chinese output without Simplified-only characters.

## Verification

- Flutter localization generation passed for all 476 message keys in each locale.
- Flutter static analysis passed with no issues.
- All 409 automated tests passed.
- The signed release APK was installed on a V2357A running Android 14. English sign-in, overview, device status, parameters, alarms, and Bluetooth screens were verified against live cloud data; technical labels and enum values contained no Chinese UI text.
