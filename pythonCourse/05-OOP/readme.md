## 9. 物件導向：魔術方法 (Dunder Methods)
魔術方法以雙下底線 `__` 開頭與結尾，讓自定義類別能與 Python 內建函式相容。

| 方法 | 觸發動作 | 實際意義 |
| :--- | :--- | :--- |
| `__init__` | 建立物件時 | 初始化屬性 (建構子) |
| `__str__` | `print()` 或 `str()` | 回傳物件的文字描述 (給人看的) |
| `__len__` | `len()` | 回傳物件的長度 (自定義邏輯) |
| `__del__` | `del` | 物件被銷毀時執行的清理動作 |

### 範例代碼：
```python
class Book:
    def __init__(self, title, pages):
        self.title = title
        self.pages = pages

    def __str__(self):
        return f"{self.title} 有 {self.pages} 頁"

    def __len__(self):
        return self.pages
```
