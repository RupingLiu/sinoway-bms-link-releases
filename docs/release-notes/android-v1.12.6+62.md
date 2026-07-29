# Sinoway BMS Mate 1.12.6+62

## 简体中文

- 修复软件版本号、产品软件版本号、主板型号、电池编码、铁塔编码等字段的字符换算和高低段拼接，长内容可完整显示。
- 优化参数分组：基础信息仅保留配置项，保护参数增加电压、温度、电流和其他保护二级分类。
- 参数单位统一显示在名称后，例如 `SOC(%)`、`剩余容量(Ah)`，数值不再重复携带单位。
- 电池类型改为文字枚举，BMS号改为 `0x` 开头的十六进制显示。
- 充电/放电 MOS 明确区分断开与闭合；电池编码、铁塔编码和蓝牙名称保持只读。

## 繁體中文

- 修復軟體版本號、產品軟體版本號、主機板型號、電池編碼、鐵塔編碼等欄位的字元轉換與高低段拼接，長內容可完整顯示。
- 最佳化參數分組：基本資訊僅保留設定項，保護參數增加電壓、溫度、電流及其他保護次級分類。
- 參數單位統一顯示在名稱後，例如 `SOC(%)`、`剩餘容量(Ah)`，數值不再重複攜帶單位。
- 電池類型改為文字列舉，BMS號改為 `0x` 開頭的十六進位顯示。
- 充電/放電 MOS 明確區分斷開與閉合；電池編碼、鐵塔編碼及藍牙名稱維持唯讀。

## English

- Fixed character decoding and high/low register aggregation for software versions, mainboard model, battery code, tower code, and other long identity fields.
- Improved parameter grouping: Basic Information now contains configuration items only, while protection parameters include voltage, temperature, current, and other secondary categories.
- Units now appear after parameter names, such as `SOC(%)` and `Remaining Capacity(Ah)`, instead of being repeated after values.
- Battery type now uses descriptive enum labels, and the BMS number is displayed as `0x`-prefixed hexadecimal.
- Charge/discharge MOS controls now distinguish Open and Close; battery code, tower code, and Bluetooth name remain read-only.

## Verification

- Flutter localization generation passed.
- Flutter static analysis passed with no issues.
- All 401 automated tests passed.
- Cloud parameter display and control labels were verified read-only on a connected Android test device.
