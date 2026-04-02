## Python 語句 (Statements) 的核心設計
Python 設計時的核心理念是：「程式碼被閱讀的次數，遠遠多於被撰寫的次數」。因此，它透過以下幾種機制來簡化語法：
1. 捨棄 {} 與 ()
- 在 C++ 等語言中，你必須用大括號 {} 來包住程式區塊，並用 () 包住條件判斷。Python 則將這些全部移除，改用：冒號 (:)：表示「接下來要開始一個程式區塊了」。
- 縮排 (Whitespace/Indentation)：Python 強制規定，同一層級的程式碼必須對齊。這不僅讓程式碼變乾淨，更確保了所有開發者寫出來的程式碼風格高度一致。

2. 告別分號 (;)
- 在 C++ 中，每一行結尾都必須加分號，否則會報錯。在 Python 中，換行即代表語句結束。這省去了很多不必要的打字與除錯困擾。
- 縮排 (Indentation) 的重要性在 Python 中，縮排不只是為了好看，它是語法的一部分。
- 其他語言 (以 C++ 為例)：縮排只是為了給人看，如果你把所有程式碼擠在同一行（即使不縮排），電腦也看得懂。
- Python：如果你沒有正確縮排，Python 會拋出 IndentationError。這是 Python 強迫你寫出「乾淨程式碼」的設計手段。
- 比較一下邏輯層級：
    - 其他語言：看 {} 決定範圍。
    - Python：看「縮排對齊」決定範圍。

```py
score = 85
if score >= 90:
    print("優秀")
elif score >= 60:
    print("及格")
else:
    print("不及格")
```

```py
age = 18

if age >= 18:
    print("成年人")
else:
    print("未成年")
```

```py
count = 3
while count > 0:
    print(f"倒數中: {count}")
    count -= 1  # 務必記得更新變數，否則會變成「無限迴圈」！
print("時間到！")
```

```py
import pandas as pd

df = pd.DataFrame({'姓名': ['小明', '小華'], '成績': [55, 80]})
# 定義一個判斷及格的函數
def check_pass(score):
    return "及格" if score >= 60 else "不及格"
# 使用 apply 應用到「成績」那一欄
df['結果'] = df['成績'].apply(check_pass)
nums = [1, 2, 3]
# 語法: [要做的事 for 變數 in 資料]
squared = [x**2 for x in nums]
# 甚至可以加 if 判斷 (只平方偶數)
even_squared = [x**2 for x in nums if x % 2 == 0]


df = pd.DataFrame({'姓名': ['小明', '小華'], '成績': [55, 80]})
# 定義一個判斷及格的函數
def check_pass(score):
    return "及格" if score >= 60 else "不及格"

# 使用 apply 應用到「成績」那一欄
df['結果'] = df['成績'].apply(check_pass)
```

## for 迴圈的語法架構

```py
for item in object:
    # 這裡放你要執行的動作
    # 記得縮排！

numbers = [1, 2, 3, 4, 5]
for num in numbers:
    print(f"現在的數字是: {num}")

for letter in 'Python':
    print(letter)

my_dict = {'a': 1, 'b': 2}

# 遍歷鍵與值
for key, value in my_dict.items():
    print(f"鍵是 {key}, 值是 {value}")
```

object：是指任何「可迭代 (Iterable)」的物件，例如字串、列表、元組或字典。
item：這是一個暫存變數。你在迴圈開始前不需要定義它，Python 會在每次迴圈時自動把 object 裡面的下一個元素塞進這個變數中。

## 這三個關鍵字是 Python 控制迴圈流程的「交通指揮官」。理解它們如何運作，可以讓你對迴圈的掌控力大幅提升。

- 三大流程控制語句

|語句|功能|比喻|
|----|----|----|
|break|強制終止迴圈，直接跳出。|遇到紅燈，直接掉頭回家，不再繞圈。|
|continue|跳過當次迴圈剩下內容，回到迴圈開頭。|遇到紅燈，跳過這條路，直接換條路繼續跑。|
|pass|什麼都不做，只是為了佔位。|遇到紅燈，停下來發呆，然後繼續綠燈行。|