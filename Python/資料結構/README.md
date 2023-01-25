# 資料結構
* 資料結構和序列  
* List  
  * 對於元組list長度可變內容可變也可以使用中刮號或是list的型態  
* 切片  
* 內建序列函式  
* zip ⚡元素配對
* 從序列建立dict  
* dict 合法的key型態  
* set  
* 
| 🐤函式  | 🐤等同語法 |🍊描述|
| ------------- |:-------------:|:-------------:|
|a.add(x)|N/A|將元素×加入集合a|
|a.clear()|N/A|將集合a清空,丟棄所有現有元素|
|a.remove(x)|N/A|把元素x從集合a移除|
|a.pop(b)|N/A|從集合a中移除任意元素,如果集合為空,會丟出KeyError例外|
|a.union(b)| a ㅣ b |所有集合a與b中不重複的元素 |
|a.update(b)|a ㅣ= b|指定集合a的內容為a和b的聯集|
|a.intersection(b)|a & b|集合a與b中所有*同時*存在的元素|
|a.intersection_update(b)|a &= b|指定集合a的內容為a和b的交集|
|a.difference(b)|a-b|在集合a但不在集合b的元素|
|a.difference_update(b)|a -= b|將集合a的內容指定為在集合a但在集合的元素|
|a.symmetric_difference(b)|a ^b|在集合a和集合b中所有元素,而且不能同時存在|
|a.symmetric_difference_update(b)|a ^=b|將集合a指定為集合a和集合b中所有元素,而且不能*同時*存在|
|a.issubset(b)|N/A|如果集合a的所有元素,都包含在b中,回傳True|
|a.issuperset(b)|N/A|如果集合b的所有元素,都包含在a中,回傳True|
|a.isdisjoint(b)|N/A|如果集合a和集合b沒有重複元素,回傳True|

* List Set 和Disct的包含式  
```python
result=[]
for valin collection:
  if condition:
    result.append(expr)
```
* 巢式list 包含式  
* 名稱空間可視範圍和本地函式  
* 函式即物件  
* 匿名lambda函式  
* itertools 模組  

| ✨函式  | 🐤描述 |
| ------------- |:-------------:|
|combinations(iterable, k)|產生所有元素可能的k-tuple到疊代變數中,忽略次序也不進行置換(也看看同類的函式combinations_with_repacement)|
|permutations(iterable, k)|產生所有元素可能的k-tuple到疊代變數中,依原次序|
|groupby(iterable[, keyfunc])|為每個唯一鍵生成(key,sub-iterator)|
|product(*iterables, repeat=1)|為輸入的疊代變數生成笛卡兒積tuple,類似巢式for迴圈|
* 錯誤及例外處理trycatch  
* Python檔案模式  

| ✨函式  | 🐤描述 |
| ------------- |:-------------:|
|r|唯讀模式|
|w|只能寫模式;建立新檔(消除同名檔案的任何資料)|
|x|只能寫模式;建立新檔,如果檔案已存在則失敗|
|a|既存檔案後面增加新資料(檔案不存在則建立新檔)|
|r+|讀和寫|
|b|二進位檔案標示,加在其他模式後面(如'rb或'wb')|
|t|文字模式(自動地解碼為Unicode)如果沒有指定的話,此項為預設模式。可將t加到其他的模式使用(例如:'rt'或'xt')|

* Python檔案方法屬性

| ✨方法  | 🐤屬性 |
| ------------- |:-------------:|
|read([size])|檔案中資料字串回傳，可選擇輸入size參數，指定要讀多少位元組|
|readlines([size])|回傳檔案中多行，可選擇輸入size參數|
|write(str)|將傳入的字串寫到檔案|
|writelines(strings)|將傳入的字串序列寫到檔案|
|close()|關閉handle|
|flush()|沖出(flush)內不I/O緩衝資料到磁碟|
|tell()|回傳目前的檔案位置(整數)|
|seek(pos)|移動檔案位置(整數)|
|closed|如果檔案已關，回傳True|
* 檔案中的位元組與Unicode  
