- We use three keywords for this
    - try: This is the block of code to be attempted (may lead to  an error)
    - except: Block of code will execute in case there is error in try block
    - finally: A final block of code to be executed, regardless of an error

## 11. Pylint 代碼品質優化
Pylint 是根據 **PEP 8** 規範進行評分。常見的扣分項目包括：

| 錯誤代碼 | 訊息內容 | 修正方式 |
| :--- | :--- | :--- |
| **C0304** | Final newline missing | 在檔案最後一行按下 Enter 多留一個空行 |
| **C0114** | Missing module docstring | 在檔案第一行加入 `""" 說明文字 """` |
| **C0103** | Constant name ... doesn't conform | 全域變數建議使用全大寫 (如 `MY_PI = 3.14`) |
| **C0303** | Trailing whitespace | 刪除行尾多餘的空格 |

> [!TIP]
> **滿分技巧：** 寫好 Docstring、注意變數命名、檔案末尾留空行，是從 8.x 進化到 10/10 的關鍵。

1. 什麼是「單元（Unit）」？
在程式開發中，一個「單元」可以是：

- 一個簡單的函式 (Function)：例如你剛才寫的 cap_text。
- 一個類別中的方法 (Method)：類別裡面的功能。
- 一個獨立的邏輯區塊：確保輸入 A 之後，一定會得到輸出 B。

所以，你不一定要有自定義的 Class 才能用 unittest；只要你有程式邏輯需要驗證，就可以使用它。

2. 為什麼測試碼要寫在 class 裡面？
這讓你感到困惑是很正常的。在 unittest 框架中，我們寫 class TestCap(unittest.TestCase) 只是因為：
- 組織化：把相關的測試案例（Test Cases）群組在一起。
- 工具繼承：透過繼承 unittest.TestCase，你的測試程式才能獲得 assertEqual、assertTrue、assertRaises 等強大的驗證工具。
- 自動化執行：當你執行 unittest.main() 時，它會自動尋找所有繼承自 TestCase 的類別，並執行裡面以 test_ 開頭的方法。

### 24. 為什麼要用 unittest？ (Unit Testing Purpose)
單元測試不是為了測試「類別」，而是為了測試「邏輯的正確性」。

#### 核心價值：
1. **防止回歸 (Regression)**：當你為了修正一個 Bug 而改動程式碼時，單元測試能確保你沒有弄壞原本正常的功能。
2. **文件化**：測試案例本身就是最好的範例碼，告訴別人你的函式預期會收到什麼、輸出什麼。
3. **解耦**：如果你發現一個函式很難寫單元測試，通常代表那個函式寫得太複雜了，需要拆解。

> [!NOTE]
> **Unit (單元)** 指的是程式中「最小的可測試部分」。

## 25. unittest 常用斷言工具 (Assertions)
斷言是單元測試的核心，用來驗證程式執行的結果。

### 常用方法清單：
1. **`assertEqual(actual, expected)`**：驗證兩者是否相等。
2. **`assertTrue(condition)`**：驗證條件是否為真。
3. **`assertIn(item, container)`**：驗證某個元素是否在容器 (list/dict) 中。
4. **`assertRaises(Error)`**：驗證程式是否在特定情況下拋出錯誤。

### 實戰範例 (assertRaises)：
```python
def divide(a, b):
    if b == 0:
        raise ZeroDivisionError("不能除以零")
    return a / b

# 測試除以零的情況
with self.assertRaises(ZeroDivisionError):
    divide(10, 0)
```