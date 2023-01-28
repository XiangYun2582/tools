# 資料處理連接合併和重塑
## 階層式索引
* 重排階層及依階層排序值
* 指定階層統計資訊
* 用DataFrame的欄當index

  * how 選項中不同的join選項

| 🐦選項 | 😸行為 |
| ------------- |:-------------:|
|'inner'|只用兩邊表格中都有的key|
|'left'|使用左方表格中的所有key|
|'right'|使用右方表格中的所有key|
|'outer'|只要兩邊表格中有出的key都使用|

  * merge 的參數

| 🐦參數 | 😸描述 |
| ------------- |:-------------:|
|left|以左邊DataFrame準進行合併|
|right|以右邊DataFrame準進行合併|
|how|可指定'inner'、'outer、'left和'right;預設是'inner'|
|on|指定合併用的key欄位,該欄位必须在兩邊的DataFrame物件中都存在·如未指定此項,也沒有指定其他的合併key的話,用左右兩邊都有出現的相同欄名稱當作合併key|
|left on|以左方DataFrame中的欄位當做合併的key(若是MultiIndex,則為多層key)|
|right_on|以右方DataFrame中的欄位當做合併的key(若是MultiIndex,則為多層key)|
|left index|以左方DataFrame中的index用來作合併的key(若是Multilndex為多層key,則為多層key)|
|right_index|以右方DataFrame中的index用來作合併的key(若是Multilndex為多層key,則為多層key)|
|sort|以合併的key為準,將合併後的資料依字典順序排序;預設為True(若是碰到大型資料集合,關閉這個選項可得到更好的效率)|
|suffixes|指定字串值的tuple,加在重複的欄位名稱後面;預設是('_x','_y')(例如:如果兩邊DataFrame物件有'data'這個欄位,那產結果變成'data_x'和'data_y')|
|copy|如果設定為False,在碰到例外情況時不複製資料到輸出資料結構中;預設是不管怎標都複製|
|indicator|加一個指出列來源的欄;欄中的值會反應列是從哪裡來的,分作'left_on'、'right_only'和'both'三種|
## 合併資料(join)
* DataFrame資料庫的join動作
* 依index作合併
* 沿軸做連接

* pandas=1.0.0 開始不再支持join_axes
```
pd.concat([s1,s4],axis=1,join='inner',join_axes=[['a','c','b','e']])
```
[解決方法連結](https://www.cnblogs.com/bigtreei/p/14160287.html)

  * concat函式參數

| 🐦參數 | 😸描述 |
| ------------- |:-------------:|
|objs|要被連接物件的dict或list;這是唯一的必要參數|
|axis|沿哪個軸作連接;預設為0(沿列)|
|join|可以設定為'inner'或'outer'(預設為'outer');設定其他軸上的index是要使用交集(inner)或是聯集(outer)
|join_axes|進行聯集或交集動作時,指定使用其他的n-1軸作為index|
|keys|用值代表被連接的物件,在連接的軸上最高階層的index;可以是內含多值的list(如果levelst傳的是多層的陣列的話)|
|levels|指定用來建構階層式index一層的值,如果有傳keys話,就變成建構多層用的值|
|names|如果keys及/或levels有傳值的話,這項是新建出的階層式index的名稱|
|verify_integrity|檢查連接物件的新軸中index標籤有沒有重複,有的話就丟出例外;預設為False,即允許重複|
|ignore_index|在沿指定axis做接合時,不要保留原index,用range(total_length)產生的新值作為index|
* 合併有重複的資料
## 重塑和旋轉
* 用階層式index進行重塑
* 長格式轉成寬格式
* 寬格式轉成長格式
