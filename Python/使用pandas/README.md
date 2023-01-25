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
  * 指定軸刪除資料
  * 索引選擇和過濾
  * 用loc和iloc作選擇
  * 整數索引
  * 算術運算與資料對齊
  * 算數運算與填值
  * DataFrame 和series之間的運算
  * apply和applymap
  * 排序和排名
  * 軸index有重複標籤
* 總匯和計算描述性統計量
  * 相關係數和共變數
    * yahoo
    * 轉回來內容Close price收盤價 volume交易量
  * 不重複值 個數計算和成員關係

