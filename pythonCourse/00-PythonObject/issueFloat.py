# https://docs.python.org/2/tutorial/floatingpoint.html

# Numbers FAQ 
# 1. What's the difference between floating point and an integer?
# An integer has no decimals in it, a floating point number can display digits past the decimal point.
# 2. Why doesn't 0.1+0.2-0.3 equal 0.0 ?
# This has to do with floating point accuracy and computer's abilities to represent numbers in memory. For a full breakdown, check out: https://docs.python.org/2/tutorial/floatingpoint.html
# 無論你使用多少位二進制數，十進制值 0.1 都無法精確地表示為二進制分數。在二進位中，1/10 是一個無限循環小數。
# 在運行 Python 的典型機器上，Python 浮點數有 53 位元精度，因此當你輸入十進位數時，內部儲存的值0.1是其二進位小數部分。
# 0.00011001100110011001100110011001100110011001100110011010
print(f"""{(0.1 + 0.2)}# 請注意，這是二進位浮點運算的固有特性：這不是 Python 的 bug，也不是你的程式碼的 bug。所有支援你硬體浮點運算的語言都會出現類似的情況（儘管有些語言預設可能不會顯示差異，或者在所有輸出模式下都不會顯示）。""")

# TODO: How to fix
from decimal import Decimal
print(Decimal(2.675))# 儲存的位數
print(round(Decimal(2.675),3))
print(Decimal("2.675"))# 另一個作弊法