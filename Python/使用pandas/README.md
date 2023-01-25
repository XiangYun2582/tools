# 使用pandas
* pandas的資料結構
   * Series
   * DataFrame
   
| 型態  | 描述 |
| ------------- |:-------------:|
|2D ndarray|一個資料矩陣,可選傳遞列和欄標籤|
|陣列、list或tuple的dict|每個序列都會變成DataFrame中的一欄;所有的序列長度要一致|
|NumPy structured/record 陣列|和“陣列、list、或tuple的dict"情況相同|
|Series組成的dict|每個值變成一欄;如果沒有顯式指定index的話,那麼每個Series 的index被聯集起來,就會變成列的index|
|dict組成的dict|每個内層的dict 變成一欄:key會被聯集起變成新的列index和"Series組成的dict"情況一樣|
|Series 或dict組成的list|每個元素變成DataFrame中的一列;dic 的key 或Series的 index會聯集起來變成Dataframe的欄標籤|
  * index物件
  
| 方法  | 描述 |
| ------------- |:-------------:|
|append|連接另外的Index物件,並產生新的Index物件|
|difference|計算Index的差集|
|intersection|計算Index的交集|
|union|計算Index的聯集|
|isin|查看傳入的資料是否存在Index物件中,以布林陣列回傳|
|delete|取得刪去索引i處的元素後新Index物件|
|drop|取得刪去指定值後新Index物件|
|insert|取得在索引i處插入新元素後新Index物件|
|is_monotonic|如果每個元素都大於等於前面的元素的話,回傳True|
|is_unique|如果沒有重複值的話,回傳True|
|unique|取得Index中不重複資料陣列|
* 重要功能
  * 重做索引

| 參數  | 描述 |
| ------------- |:-------------:|
|index|使用新的序列作為index,序列可以是另外一個idex實例或其他Python資料結構中類似序列的東西,輸出索引將會完全按照序列設定,不做任何複製動作|
|method|內插(填值)方法;'ffil'複製前一個值,而'bfill'會複製後面一個值|
|fill_value|替代值;在重做索引時若發生遗失值的情況,就用替代值替代|
|limit|使用前一個值或後面一個值作插值時,最多填到哪裡(幾個元素個數)|
|tolerance|作index不精比對情況使用,配合前一個值或後面一個值插值,最多填到哪裡(絕對數值差距)(譯按:符合abs(index[indexer]-target)<=tolerance條件時填值)|
|level|使用MultiIndex時,指定匹配哪一層inex|
|copy|如果設定True話,即使新舊index完全相同,也會進行底層的資料複製;如果為False的話,在index相同時,不要複製資料|
  * 指定軸刪除資料
  * 索引選擇和過濾
  * 用loc和iloc作選擇
```diff
!有點重要是個好方法
```
**DataFrame的索引方法**

| 方法 | 描述 |
| ------------- |:-------------:|
|df[val]|從DataFrame中選擇一個連續的欄;在以下情況使用很方便:布林陣列(過濾列)、切片(切片列)或布林DataFrame(在條件峸立時設定值)|
|df.loc[val]|從DataFrame中用標選擇一到多個列|
|df.loc[:, val]|用標籤選擇一到多個欄|
|df.loc[val1, val2]|用標籤選擇欄或列|
|df.iloc[where]|從DataFrame中用整數選擇一到多個列|
|df.iloc[:, where]|用整數位置選擇一到多個欄|
|df.iloc[where_i, where_i]|用整數選擇欄或列|
|df.at[label_i, label_i]|用欄和列標選擇單一值|
|df.iat[i, j]|用欄和列位(整數)選擇單一值|
|reindex方法|用標籤選擇欄或列|
|get_value,set_value 方法|用欄和列標籤選擇單一值|
  * 整數索引

```python
ser = pd.Series(np.arange(3.))
ser
ser[-1]
```
> 感覺沒錯 但程式要猜使用者要標籤索引還是位置索引做不太到，最後一行執行會error

  * 算術運算與資料對齊
  * 算數運算與填值

| 方法 | 描述 |
| ------------- |:-------------:|
|add, radd|做加法(+)|
|sub, rsub|做減法(-)|
|div, rdiv|做除法(/)|
|floordiv, rfloordiv|做整除(//)|
|mul, rmul|做乘法(*)|
|pow, rpow|做取冪(**)|

  * DataFrame 和series之間的運算
  * apply和applymap
  * 排序和排名

| 方法 | 描述 |
| ------------- |:-------------:|
|'average'|預設;為平手的值指定平均排名|
|'min'|對平手的值使用最小排名|
|'max'|對平手的值使用最大排名|
|'first'|看到平手的值時,以值出現次序排名|
|'dense'|行為同method='min',排名名次永遠只依序加1,不會因平手而增加跳過某個名次|

  * 軸index有重複標籤
* 總匯和計算描述性統計量
  * 歸納方法

| 方法 | 描述 |
| ------------- |:-------------:|
|axis|指定目標軸;0是DataFrame列,1是欄|
|skipna|排除遺失值;預設為True|
|level|如果該軸使用層式index(MultiIndex的話,指定level進行歸納|

  * 描述和匯總統計值

| 方法 | 描述 |
| ------------- |:-------------:|
|count|非NA值的總數|
|describe|為Series或每個DataFrame的欄位計算一匯總統計值|
|min, max|計算最小和最大值|
|argmin, argmax|計算最小和最大值所在index位置(整數)|
|idxmin, idxmax|計算最小和最大值所在的index位置(標籤)|
|quantile|計算樣本從0到1的百分排名|
|sum|值的加總|
|mean|值的平均|
|median|算術中位數(50%百分數)|
|mad|平均值的絕對偏差|
|prod|所有值的乘積|
|var|樣本差異(變異數)|
|std|樣本標準差|
|skew|值的樣本偏態(第三動差)|
|kurt|值的樣本峰態(第三動差)|
|cumsum|累加|
|cumin, cummax|重複前面最小值或最大值|
|cumprod|累乘|
|diff|計算和前值的算術差值|
|pct_change|計算值的百分比變化|
  * 相關係數和共變數
    * yahoo
> * 利用yahoo finance收集股價價格這沒辦法用了QQ
> yahoo2017被Verizon收購
```python
import pandas_datareader.data as web
all_data = {ticker:web.get_data_yahoo(ticker)
for ticker in ['AAPL','IBM','MSFT','GOOG']}
price = pd.DataFrame({ticker: data['Adj Close']
for ticker,data in all_data.items()})
volume = pd.DataFrame({ticker: data['Volume']
for ticker,data in all_data.items()})
```
> * 替代方案yfinance
> [參考連結](https://pixnashpython.pixnet.net/blog/post/42614998):我則是採用

```python
#pip install yfinance 
import yfinance as yf 
```
* [詳細內容](https://pythonviz.com/finance/yfinance-download-stock-data/)
    * 轉回來內容Close price收盤價 volume交易量
  * 不重複值 個數計算和成員關係

| 方法 | 描述 |
| ------------- |:-------------:|
|isin|檢查Series中每個,否存在於輸入的序列中,回傳一個布林陣列|
|match|計算陣列中每個元素值,在另外一個值不重複陣列中的index值;在做資料對齊和聯合型態操作時相當好用|
|unique|取得Series中,傳一個陣列,次序依照元素出現順序|
|value_counts|回傳一個序列,其index是不重複元素,值是該元素出現次數,以次數作遞減排序|

