# ![Generic badge](https://badgen.net/badge/python/colab/orange?icon=chrome&color.svg)  
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `期許`
```diff
! 我有一個很大的目標，我希望之前所學過程式的一些作法也可以成功實現在Python的身上。
```
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `入門`  
  * 了解python的一些架構和套件  
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `資料結構`  
  * 幫助了解function建立  
  * list set tuple 基本概念  
  * 一點點排序資料整理手法
  * 打開資料 Unicode utf-8 位元概念  
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `NumPy基礎:陣列和向量運算`  
  * 多維陣列物件
  * 全域函式
  * 用陣列寫陣列導向程式
  * 從檔案輸入或輸出值到陣列
  * 線性代數
  * 生成偽隨機
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `pandas`
  * 資料結構:Series DataFrame index物件
  * 抓取欄和列東西
  * 簡單的運算
  * 基本統計量(summary)
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `資料匯入和存取`  
  * 讀取和輸出文字檔
  * Json資料
  * XML和HTML
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `資料處理和前處理`
  * 處理遺失資料:過濾和填值NA
  * 資料轉換
  * 字串操作:正規表達式
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `資料處理連接合併和重塑`
  * 階層的概念,類似類別資料的table
  * 資料合併(join)
  * 轉table2＊2或是2＊1型式
  * 長轉寬、寬轉長(類似r pivot melt)
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `繪圖與視覺化`
  * matplotlib 的一些功能:建立圖層和子圖層
  * 標題標籤和附註的功能(內含:**中文解決辦法**)
  * 用pandas和seaborn繪圖,如:長條圖、直方圖
  * 補充資料:Boken、Ploty ▶ 做出動態 可互動的python圖形
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `其他`
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `實用`
```python
#修改工作路徑
import os
from google.colab import drive
drive.mount('/content/drive')

path="/content/drive/MyDrive/python/dataset"
os.chdir(path)
os.listdir()#判斷裡面內容
```
* ![Generic badge](https://img.shields.io/badge/%E5%9C%96%E6%A1%88-XiangYun%E7%A8%8B%E5%BC%8F-purple?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZD0iTTIzLjk5OSAxMi40NjVhOS42MDEgOS42MDEgMCAwIDEtMTkuMjAzIDBoMS4wN2E4LjUzIDguNTMgMCAxIDAgOC41MzMtOC41M3YtMS4wN0E5LjYgOS42IDAgMCAxIDI0IDEyLjQ2M3ptLTkuNi0zLjJhMy4yIDMuMiAwIDEgMCAzLjIgMy4yIDMuMiAzLjIgMCAwIDAtMy4yLTMuMnptLTIgMC0uNi02LjY3Mi0yLjQ2MiAxLjkyLTEuNDYtMS40NGE0LjY3IDQuNjcgMCAwIDAtNS42Mi0uMzdsLTIuMDIgMS4zYS41NC41NCAwIDAgMC0uMTUuNzQuNTQuNTQgMCAwIDAgLjc0LjE1bDItMS4zMWEzLjY0IDMuNjQgMCAwIDEgNC4yOS4yMmwxLjM3IDEuMzgtMi4yOSAxLjgyMXoiLz48L3N2Zz4=)
* 網址途徑: https://colab.research.google.com/
* ebook: 
   * https://jakevdp.github.io/PythonDataScienceHandbook/?utm_source=devfreebooks&utm_medium=medium&utm_campaign=DevFreeBooks
   * https://www.pdfdrive.com/python-data-analytics-data-analysis-and-science-using-pandas-matplotlib-and-the-python-programming-language-d158003322.html
* 遇到的一些小問題
 * Jupyter notebook 下載:https://ithelp.ithome.com.tw/articles/10200046
 * Jupyter Notebook 和相關套件下載 :https://ithelp.ithome.com.tw/articles/10307706
 * Jupyter Notebook 命令提示字元:https://medium.com/@yeyuting0307/win10-anaconda-%E5%91%BD%E4%BB%A4%E6%8F%90%E7%A4%BA%E5%85%83-jupyter-notebook%E6%8C%87%E4%BB%A4%E5%A4%B1%E6%95%88-758b50b694d
