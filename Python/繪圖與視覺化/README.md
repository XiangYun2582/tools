# 繪圖與視覺化
* %matplotlib notebook 動態的圖
* %matplotlib inline 靜態的圖
## matplotlib API 概觀
* 圖和子圖
  * fig 感覺就是建立圖層
  * subplot 類似建立子圖層(2*2,第幾個)
  * plt.show()直接顯示
  * pyplot.subplots 可用選項

|🥉參數|🦉描述|
| --------- |:---------:|
|nrows|子圖有幾列|
|ncols|子圖有幾欄|
|sharex|所有的子圖都用一樣的x軸比例(調整xlim會影響所有的子圖)|
|sharey|所有的子圖都用一樣的y軸比例(調整ylim會影響所有的子圖)|
|subplot_kw|在內部呼叫add_subplot時,傳給add_subplot的字典型態關鍵字|
|**fig_kw|傳給subplot的字典型態關鍵字,在建立圖時使用,例如plot.subplots(2,2,figsize=(8,6))|

* 調整子圖間留白

```python
plt.subplots_adjust(left=None,bottom=None,right=None,top=None,wspace=None,hspace=None)
```

* 色彩、標示和線條樣式
* 刻度 標籤和圖例
`設定主題 軸標籤 刻度和刻度標籤`

[中文顯示問題範例](https://colab.research.google.com/github/willismax/matplotlib_show_chinese_in_colab/blob/master/matplotlib_show_chinese_in_colab.ipynb#scrollTo=YF7KkDLjH1JL)  
[style細節](https://ithelp.ithome.com.tw/articles/10222330)

* 加入圖示
* 註釋與畫圖形

```
ax.text(x,y,'fxxk u world! \t syntax error : bad words',family ='monospace',fontsize=10)
```
 * text會在指定的位置寫上客製化的文字
 * 當然還有其他如text arrow 和annotate
* 把圖存檔
```python
plt.savefig('figpath.svg')
plt.savefig('figpath.png',dpi=400,bbox_inches='tight')#dpi像素解析度
```
* save不是只能拿來寫到硬碟 他也可以寫到任何像檔案的物件之中，如:byteIO

```python
from io import BytesIO
buffer = ByteIO()
plt.savefig(buffer)
plot_data = buffer.getvalue()
```

 * Figure.savefig選項

|🥉參數|🦉描述|
| --------- |:---------:|
|fname|代表檔案路徑或Python類檔案物件的字串,圖的格式會以副檔名為準(例如.pdf是PDF,.png是PNG)|
|dpi,facecolor,edgecolor|圖每英吋的解析度;預設是100,但可以設定|
|format|明確指定要用的檔案格式('png'、'pdf'、'svg'、'ps'、'eps'⋯|
|bbox_inches|圖的哪個部分要存檔;如果指定 'tight' 的話,就會試著將圖周圍的空白去掉|

* matplotlib 設定
## 用pandas和seaborn繪圖

```python
plt.rc('figure',figsize=(10,10))  

font_options={'family':'monspace',
        'weight':'bold',
        'size':'small'}
plt.rc('font',**font_options)
```

* 折線圖

 * Series.plot 方法的參數

|🥉參數|🦉描述|
| --------- |:---------:|
|label|圖例用的標籤|
|ax|要拿來畫圖的matplotlib子圖物件;如果沒傳的話,使用當前的matplotlib子圖|
|style|用來傳給matplotlib的樣式字串,像是'ko--'|
|alpha|圖填充透明度(從0到1)|
|kind|可以是 'area' 、 'bar' 、 'barh' 、 'density'、 'hist' 、'kde' 、'line' 或 'pie'|
|logy|在y軸使用對數(log)刻度|
|use_index|用物件index當作刻度標籤|
|rot|旋轉刻度標(0到360度)|
|xticks|x軸刻度用的值|
|yticks|y軸刻度用的值|
|xlim|x軸範圍(例如[0,10])|
|ylim|y軸範圍|
|grid|顯示軸格線(預設關)|

* DataFrame 專用 plot 方法參數

|🥉參數|🦉描述|
| --------- |:---------:|
|subplots|將DataFrame中每欄畫在不同的子圖中|
|sharex|如果subplots=True,每張子圖的x軸、刻度和範圍都是一樣的|
|sharey|如果subplots=True,每張子圖的y軸、刻度和範圍都是一樣的|
|figsize|tuple型態,指定圖的大小|
|title|字串型態,圖的標題|
|legend|加入子圖圖例(預設True)|
|sort_columns|用字母序作為畫子圖的順序;預設是使用既有的欄順序|

* 長條圖
* 直方圖和密度圖
* 散佈圖或稱點圖
* 層面圖層與分組資料
 * 詳細:  
[Seaborn.FacetGrid](https://seaborn.pydata.org/)
 * 其他的視覺化工具:  
[Bokeh](https://bokeh.pydata.org/)  
[Ploty](https://github.com/plotly/plotly.py)  
▶ 做出動態 可互動的python圖形
