# 資料整理和前處理
## 處理遺失資料
* 過濾遺失值
  * 可以用pandas過濾(bool)的方式
  * dropna也是一個不錯的方式
  * 參考:
    * [小工具找值](https://amberwest.github.io/2019/02/23/%E4%BD%BF%E7%94%A8pandas%E7%AD%9B%E9%80%89%E5%87%BA%E6%8C%87%E5%AE%9A%E5%88%97%E5%80%BC%E6%89%80%E5%AF%B9%E5%BA%94%E7%9A%84%E8%A1%8C/)
    * [填值好用](https://www.easytweaks.com/update-values-dataframe-pandas-python/)
    * [R對比程式寫法](https://medium.com/datainpoint/%E5%A6%82%E4%BD%95%E6%8E%8C%E6%8E%A7%E8%B3%87%E6%96%99-%E8%B3%87%E6%96%99%E6%A1%86%E7%9A%84%E6%93%8D%E4%BD%9C%E6%8A%80%E5%B7%A7-%E4%B8%8A-a85a85b7073c)
  * NA處理方法

| 參數🐱 | 描述☺ |
| ------------- |:-------------:|
|dropna|指定軸上的標籤為單位,過濾每個指定的標是否有遺失資料,對於遺失資料的容忍有不同限定值。|
|fillna|將遗失資料以指定的值取代,或使用内插值方法如'ffill'或'bfill'|
|isnull|回傳布林值,指出目標是否為遺失值|
|notnull|isnull的反向函式|

* 為遺失值填值
  * fillna函式參數

| 參數🐱 | 描述☺ |
| ------------- |:-------------:|
|method|用來填充遺失值的常數或類dict物件|
|value|內插的方法;如果函式沒有使用其他參數的話,預設值是 ffill'|
|axis|要填充的軸向;預設為axis=0|
|inplace|直接修改呼叫的物件,不產出複製資料|
|limit|向前或向後填充時,最大的填充數量|

## 資料轉換
* 移除重複值
* 使用函式或對應關係轉換值
* 取代值
* 更名軸index
* 離散化和分組
* 偵測和濾除離群值
* 排列與隨機取樣
* 指標/虛擬變數
## 字串操作
* Python內建字串方法

| 參數🐱 | 描述☺ |
| ------------- |:-------------:|
|count|字串中子字串不重複出現的次數|
|endswith|如果字串有特定後綴結尾的話回傳True|
|startswith|如果字串有特定前綴開頭的話回傳True|
|join|用本字串當分隔符號連接其他的字串|
|index|字串中指定子字串第一個字出現的位置;如果找不到值的話丟出ValueError|
|find|字串中指定子字串**首次**出現時第一個字出現的位置;功能如index,但如果找不到值的話回傳-1|
|rfind|字串中指定子字串**最後一次**出現時第一個字母出現的位置;如果找不到值的話回傳-1|
|replace|在字串出現處用另外一個字串取代|
|strip, rstrip, 1strip|消去空白包括換行;和每個元素執行x.strip()(rstrip、lstrip)等效|
|split|依指定的分隔符號將字串拆解成子字串list|
|lower|將字母變成小寫|
|upper|將字母變成大寫|
|casefold|將字母變成小寫,並將地區字元轉換為通用型式|
|ljust, rjust|向左或向右對齊;並將字串另外一側以空白填滿(或指定其他填充字元),可指定回傳的字串最小長度|

* 正規表達式
  * 適用正規表達式的方法

| 方法🐱 | 描述☺ |
| ------------- |:-------------:|
|findall|以list回傳所有字串中不重複匹配結果|
|finditer|類似findall,但回傳疊代器|
|match|檢查字串的開頭是否匹配,具有將匹配到的結果分段的能力;如果匹配成功回傳match物件,否則回傳None|
|search|在字串中找匹配;如果找到則回傳match物件;和match不同的地方是,會在整段字串中找尋匹配,而不是只在開頭找|
|split|在指定的樣式處將字串切開分段|
|sub, subn|使用取代表達式,將字串中匹配的結果做全部取代(sub),或是取代前n個匹配結果;使用\1、\2符號在要進行取代的字串中代表要使用的匹配段|
* pandas 中的向量字串函式
  * 部分向量化字串方法

| 方法🐱 | 描述☺ |
| ------------- |:-------------:|
|cat|元素级別進行宇串相接,可指定分隔符號|
|contains|回傳布林陣列,指出每個宇串是否符合指定樣式/正規表達式|
|count|計算樣式出現的次數|
|extract|利用可以分段的正规表達式,從字串Series中取出一个或多個字串:輸出的結果是一個DataFrame每個分段會有一欄|
|endswith|等同於對每個元素做x.endswith(pattern)|
|startswitch|等同於對每個元素做x.startswith(pattern)|
|findall|找出字串同所有匹配樣式或regex的結果|
|get|索引出元素(取回第i個元素)|
|isalnum|等同於內建的str.alnum|
|isalpha|等同於內建的str.isalpha|
|isdecimal|等同於內建的str.decimal|
|isdigit|等同於內建的str.digit|
|islower|等同於內建的str.lower|
|isnumeric|等同於內建的str.isnumeric|
|isupper|等同於內建的str.isupperc|
|join|執行Series中元素级的字相接,可指定分隔符號|
|len|計算每個字串的長度|
|lower, upper|轉換大小寫;等同於對每個元素做x.1ower()或x.upper()|
|match|指定要用的正表達式後,對每個元素做re.match,已list回傳每個匹配的分段群組|
|pad|在字串的左、右或兩邊加上空白|
|center|等同於pad(side='both')|
|repeat|複製字串(例如s.str.repeat(3)等同於對每個字串做x*3的動作)|
|replace|將符合樣式/regex的字串,替换成其他字串|
|slice|對Series中每個字串作切片|
|split|用指定分符號或正規表達式作字串分段|
|strip|將字串前後的空白去掉,包括換行符號|
|rstrip|將字串後的空白去掉|
|lstrip|將字串前的空白去掉|
