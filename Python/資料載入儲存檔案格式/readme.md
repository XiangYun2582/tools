# 資料載入儲存檔案格式
```python
#Colab資料夾設定方法
#!pip install google.colab #如未安裝取消註解後執行
import os

from google.colab import drive
drive.mount('/content/drive')

##出現提示欄進行授權

os.chdir('/content/drive/My Drive/{你的google雲端硬碟資料夾位址}') #切換該目錄
os.listdir() #確認目錄內容
```

* pandas 中解析函式

|函式|描述|
| ------------- |:-------------:|
|read_csv|從檔案、URL或類檔案物件中取符號分隔資料;預設使用逗號分隔|
|read_table|從檔案、URL或類檔物件中取符分隔資料;預設使用Tab('\t'分隔)|
|read_fwf|從固定寬度欄位讀取資料(例如:沒有分隔符號)|
|read_clipboard|類似read_table,用來剪貼簿讀取資料;再轉換網頁資料為表格資料時很好用|
|read_excel|從Excel XLS或XLSX表式資料|
|read_hdf|讀取用pandas寫的HDF5檔案|
|read_html|從指定的HTML文件中取所有的表格|
|read_json|從JSON(JavaScript Object notation)字串格式讀取資料|
|read_msgpack|讀取以MessagePack二進位格式編碼pandas資料| 
|read pickle|讀取以Python pickle格式所儲存的物件|
|read_sas|從SAS系統的儲存格式中讀取一個 SAS資料集|
|read_sql|把一個SQL query(使用SQLAIchemy)的結果,讀成一個 pandas DataFrame|
|read_stata|從Stata檔案格式讀取資料集|
|read feather|讀取Feather二進位檔案格式|

* 部分read_csv/read_table函式參數

|參數|描述|
| ------------- |:-------------:|
|path|表示檔案系統、URL或類檔案物件的字串|
|sep或delimiter|用來分隔每列欄位的字元序列或正規表達式|
|header|用來當作欄名的列號:預設為0(第一列),但如果没有欄名列的話,應該要指定為 None|
|index_col|指定用來當作列index的編號或名稱;可以指定單一欄或是為階層式index指定多個欄|
|names|和 header-None 合併使用,以list格式指定欄位的名稱|
|skiprows|從檔案開始起算,要跳過的列號(首列為0開始)|
|na_values|要用NA取代掉的值|
|comment|見到指定字元,即認為是註解(一直到行尾)|
|parse_dates|嘗試將資料解析為datetime;預設為False如果設定為True的話,試把所有都解析為datetime.不然可以指定要解析的欄標籤或名稱.如果傳遞的是list tuple格式的話,將會合併多個欄的資料解析成日期(例加:日期/時間分別放在兩欄的情況)|
|keep_date_col|如果合併欄位進行日期解析的話,保留原始欄位;預設為False|
|converters|一個含欄編號或名稱,對應到函式的dict型態(例如('foo':f)指定套用f函式於'foo'欄中的所有值|
|dayfirst|常解析不好分辨的日期時,套用國際格式(例如:76/2012->Jun7,2012)預設為Flse|
|date_parser|用來解析日期的函式|
|nrows|從檔頭開始算,要讀幾行|
|iterator|為分段讀取檔案,回傳一個TextParser物件|
|chunksize|叠代時使用,指定每段的大小|
|skip_footer|跳過檔案的最後幾行|
|verbose|印出詳細的解析輸出訊息,例如在非數值欄位中有多少遺失值|
|encoding|Unicode文字編碼(例:utf-8代表UTF-8編碼文字)|
|squeeze|如果解析的資料只有一個欄位,就回傳一個Series|
|thousands|千位分隔符號(例如:','或'.')|
## 讀取和寫入文字格式資料
* 分段讀取文字檔
  * 教你如何匯入資料(read_csv)
    * CSV dialect選項

|參數|描述|
| ------------- |:-------------:|
|delimiter|分隔欄位的一個字元字串;預設是','|
|lineterminator|寫出時的行尾標示符號預設是'\r\n'。讀取時不需使用,自動識別跨平台行尾符號|
|quotechar|指定欄位的括號標記字元(用法類似delimiter;預設為'"'|
|quoting|括號原則。可用選項包csv.QUOTE_ALL所有位欄位都要括)csv.QUOTE_MINIMAL(只有標記特別字元的欄位才要括)、csv.QUOTE_NONNUMERIC以及csv.QUOTE_NONE(不括)。請看Python的文件有完整說明,預設為QUOTE_MINIMAL|
|skipinitialspace|忽略分隔字元後的空白;預設為False|
|doublequote|一個欄位中如何處理括號字元的方法;True為雙倍(請到上文件完整說明和行為)|
|escapechar|如果將quoting 設為csv.QUTE_NONE時,用脱逸分隔符號的字串,預設是關閉|
  * 資料的格式col和row以及data
  * 亂碼(中文)問題、跳過行數skip
  * 遺失值處理
  * head()查看
* 寫出文字資料
  * 單純輸出在終端上查看和輸出to_csv以及!cat
* 分隔符號使用
* Json資料
  * 嘗試篩選欄位
* XML和HTML
  * [lxml](https://lxml.de)
  * Beautiful Soap
  * html5lib
```python
conda install lxml
pip install beautifulSoap4 html5lib
```
> 也可以使用pip install lxml


---

> lxml雖然比較快但是其他函式功能比較強大較能處理有問題的html和XML檔

* 用lxml.objectify解析XML
## 二進位資料格式
* HDF5 格式
* 讀取微軟excel檔案
## 使用Web API
## 使用資料庫
