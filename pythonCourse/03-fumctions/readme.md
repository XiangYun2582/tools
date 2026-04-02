1. 為什麼要用星號？
正常的函數必須定義固定數量的參數，例如 def add(a, b) 只能傳兩個數。但如果你不知道使用者會傳進來多少個數字（可能是 0 個，也可能是 100 個），這時候 *args 就派上用場了。
```py
def myfunc(*args):
    print(args)      # 看看打包後的樣子
    return len(args) # 回傳總共有幾個參數

# 測試
print(myfunc(10, 20, 30))
```

```py
def info(**kwargs):
    print(kwargs)

info(name="Alice", age=25) 
# 輸出：{'name': 'Alice', 'age': 25}
```

- 星號 * 就像一個 收納袋，讓你的函數變得「大肚能容」，不管丟多少東西進去，它都能用一個變數名稱全部接住。