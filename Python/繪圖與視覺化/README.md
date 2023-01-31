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
'設定主題 軸標籤 刻度和刻度標籤'

[中文顯示問題範例](https://colab.research.google.com/github/willismax/matplotlib_show_chinese_in_colab/blob/master/matplotlib_show_chinese_in_colab.ipynb#scrollTo=YF7KkDLjH1JL)  
[style細節](https://ithelp.ithome.com.tw/articles/10222330)

* 加入圖示
* 註釋與畫圖形
* 把圖存檔
* matplotlib 設定
## 用pandas和seaborn繪圖
* 折線圖
* 長條圖
* 直方圖和密度圖
* 散佈圖或稱點圖
* 層面圖層與分組資料
