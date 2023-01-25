# NumPy 基礎: 陣列和向量計算
* 資料交換的通用語言
  * ndarray有效率
  * 不用寫迴圈
  * 利用memory-mapped讀取資料
  * 線性代數 隨機產生器 傅利葉轉換
  * C C++ Fortran寫成的C API介面函式庫
* 資料轉換 清理 切分 過濾 轉換 其他運算
* 排序 集合化 集合運算
* 合併
* 矩陣表達式取代條件式if else  elif
## NumpPy ndarrary: 多維陣列物件
* 產生隨機資料
* 建立ndarray

| 函式  | 描述 |
| ------------- |:-------------:|
| array      | 輸入資料(list、tuple、array其他序列型態)轉換為一個ndarray,可使用dtype或是明確指定dtype,預設複製所有輸入資料 |
| asarray     | 將輸入轉為ndarray,但如果輸入已經一個ndarray,則不進行資料複製 |
| arange      | 功能類似內建range,但回傳的是ndarray,而不是list |
| ones,ones_like  | 依指定的shape和dtype生充滿1的陣列;ones_like可依輸入的另一個陣列,產生相同shaped和dtype且充滿1的陣列|
|zeros,zeros_like|功能同ones和ones_like差在填充的是0|
|empty,empty_like|取得新記憶體建立新陣列,但不像ones和zeros一樣去填充值|
|full,full_like|指定要填充的值,依指定的shape和dtype建立新陣列,full_like可輸入另外一個陣列,依該陣列產生相同shape和dtype且完成值填充的陣列|
|eye,identity|建立一個N*N的單位矩陣(對角線填充1,其他填充0)|

* ndarray 的資料型態


| 函式🐱 |型態碼🐱 | 描述☺ |
| ------------- |:-------------:|:-------------:|
|int8, uint8|i1,u1|帶號與不帶號8位元(1位元組)整數型態|
|int16, uint16|i2,u2|帶號與不帶號16位元整數型態|
|int32, uint32|i4,u4|帶號與不帶號32位元整數型態|
|int64, uint64|i8,u8|帶號與不帶號64位元整數型態|
|float16|f2|半精度浮點數|
|float32|f4 or f|標準單精度浮點數,和C的float相容
|float64|f8 or d|標準倍精度浮點數,和C的double以及Python的float相容|
|float128|f16 or g|延伸精度浮點數|
|complex64,complex128,complex256|c8,c16,c32|複數,用兩個32、64或128的浮點數表示|
|bool|?|布林型態,儲存True或False值|
|object|O|Python物件型態;其值可以是任意Python物件|
|string_|S|固定長度ASCII字串型態(每個字1位元組);舉例來說用'S10'可建立一個string dtype長度為10|
|unicode_|U|固定長度Unicode字串型態(每個字所佔元組依情況而定)用法和string_一樣(例如'U0')|
* NumPy 陣列的算術運算
* 基本的索引和切片
* 使用切片作索引
* NumPy 陣列的算術運算
* 基本的索引和切片
* 使用切片作索引
* 布林索引
* 花式索引
* 轉置陣列和軸交換
## 全域函式:快速元素級別陣列函式
## 一元全域函式
| 函式🐱 | 描述☺ |
| ------------- |:-------------:|
|abs, fabs|逐元素計算絕對值,元素可以是整數、浮點數或虛數|
|sqrt|逐元素計算平方根(相於做arr**.5)|
|square|逐元素做平方(相當於做arr**2)|
|exp|逐元素做指數\$$e^{x}$|
|log,log10,log2,log1p|做自然對數(以e為底)或以10為底log以2為底log以及log(1+x)|
|sign|計算每個元素的正負值:1(正)、0(零)或-1(負)|
|ceil|逐元素計算向上取整(例:找到大於或等於一個數字的最小整數)|
|floor|逐元素計算向下取整(例如:找到小於或等於一個數字最大整數)|
|rint|將元素取最靠近的整數,並保留其dtype|
|modf|將陣列的小數和整數部分分開成為不同陣列回傳|
|isnan|回傳一個布林陣列,標示元素是否為NaN(非數字)|
|isfinite, isinf|回傳一個布林陣列,標示元素是否為有限(non-inf、non-NaN)或無限|
|cos, cosh, sin, sinh,tan, tanh|一般或雙曲三角函數|
|arccos, arccosh,arcsin, arcsinh,arctan, arctanh|反向三角函數|
|logical_not|逐元素計算not x的值(相當於做~arr)|

*  二元全域函式
| 函式🐱 | 描述☺ |
| ------------- |:-------------:|
|add|把陣列對應位置的元素相加|
|subtract|第一個陣列減掉第二個陣列|
|multiply|兩個陣列元素相乘|
|divide, floor_divide|除或整除(捨去餘數)|
|power|將第一個陣列中的元素做第二個陣列中所標示的次方|
|maximum, fmax|逐元素找大值;fmax忽略Nan|
|minimum, fmin|逐元素找小值;fmin忽略Nan|
|mod|逐元素取餘數(除法的餘數)|
|copysign|把第二陣列中值的正負號複製到第一個參數中寫的值|
|greater, greater_equal,less, less_equal, equal,not_equal|執行元素級別的比較,產出布林陣列(等於中間放了>、>=、<=、==、!=運算子)|
|logical_and,logical_or,logical_xor|計算元素級別的邏輯運算真值(等於中間放了&、｜、^運算子|
*  用陣列寫陣列導向程式
* 用陣列運算表達條件邏輯
* 數學和統計方法

| 函式🐱 | 描述☺ |
| ------------- |:-------------:|
|sum|沿著指定軸加總陣列中有元素;若是零長度陣列,加總結果為0|
|mean|算術平均數;零長度陣列回傳NaN|
|std, var|均方差和變異數,可選擇調整自由度(預設分母n)|
|min, max|最小值與最大值|
|argmin, argmax|最小值和最大值的索引值|
|cumsum|從元素0開始累加元素和|
|cumprod|從元素0開始累加元素積|
* 布林陣列方法
* 排序
* Unique和其他集合操作

| 方法🐱 | 描述☺ |
| ------------- |:-------------:|
|unique(x)|取得x和y中排序好不重複值|
|intersect1d(x,y)|取得x和y排序好的共有值|
|union1d(x,y)|取得x和y排序好的聯集值|
|in1d(x,y)|x中的值是否存在y中,回傳一個布林陣列|
|setdiff1d(x,y)|x中的值是否存在y中,但在y中不存在的元素|
|setxor1d(x,y)|對稱差集,取得要就在x不然就在y的元素,但不能同時存在x與y|
## 從檔案輸入或輸出值到陣列
## 線性代數

| 函式🐱 | 描述☺ |
| ------------- |:-------------:|
|diag|以一維陣列回傳方形矩陣對角線(或非對角線)元素,轉換一個一維陣列值放到矩陣對角線上,其他非對角線元素填零|
|dot|矩陣乘法|
|trace|計算對角線元素的和|
|det|計算矩陣行列式|
|eig|計算方形矩陣的特徵值和特徵向量|
|inv|計算方形矩陣的反矩陣|
|pinv|計算矩陣的Moore-Penrose擬反矩陣|
|qr|計算QR分解|
|svd|計算奇異值分解(SVD)|
|solve|A為一個方形矩陣,計算線性方程Ax=b|
|lstsq|計算Ax=b的最小平方解|
## 生成偽隨機

| 函式🐱 | 描述☺ |
| ------------- |:-------------:|
|seed|設定亂數產生器種子|
|permutation|回傳一個打亂過的序列,或是打亂過的陣列|
|shuffle|以in-place的方式打亂一個序列|
|rand|從均勻分布中抽取樣本|
|randint|指定低到高區間,從中抽取整數樣本|
|randn|從平均數為0,標準差為1的常態分布上抽取樣本(MATLAB式介面)|
|binomial|從二項分布中抽取樣本|
|normal|從常態(高斯)分布中抽取樣本|
|beta|從beta分布中抽取樣本|
|chisquare|從卡方分布中抽取樣本|
|gamma|從gamma分布中抽取樣本|
|uniform|從均勻分布[0,1)中抽樣本|
## 範例:隨機漫步
* 一次模擬許多隨機漫步
