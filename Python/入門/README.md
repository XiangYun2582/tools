# 相當的入門概念
```diff
! 簡單的說就是一個學python的起手式，所以還沒到接觸資料部分但是已經有摸到邊。
```
* 前言 有啥套件 有甚麼功能  
  * SciPy 套件  
    * Scipy.integrate `積分微分方程`
    * Scipy.linalg 線性代數 矩陣分解
    * Scipy.optimiz 函數優化器
    * Scipy.scignal 信號處理器
    * Scipy.sparse 稀疏矩陣
    * Scipy.special ex:數學函式如gamma
* Scipy.stats 描述性統計 檢驗 分布pdf之類
  * scikit-learn 套件  
    * 分類: SVM randomforest knn 羅吉斯迴歸
    * 迴歸: Lasso ridge脊迴歸
    * 分群: k-means 空間分群
    * 降維: PCA 特徵工程 矩陣分解
    * 模型選擇: 網路搜索 交叉驗證 度量
    * 欲處理: 特徵提取 正規化  
  * statsmodels 套件  
    * 迴歸模型:lm glm robust-lm 線性混和效果
    * anova
    * 時間序列: ar arma arima var ---
    * 非參數方法: kernal核估計 核心迴歸
    * 統計模型視覺化呈現  

  * 安裝  
```python
pip install (package)
```
* import慣例  
***社群常用的簡寫

```python
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import statsmodels as sm
```

`from numpy import不好表示不好書寫的不知道為甚麼(大型套件?)`  
***術語 感覺是什麼術式(如蔓蔓樺)***
> * 資料探勘 munge munging wrangling 
> * 虛擬程式碼 Psedocode
> * 糖衣語法 sysntactic sugar(不會加入新功能的程式碼，意味更方便使用)
> * 術語  
* 工作路徑getwd  
> * 學習連結:附贈中文亂碼問題
> * 1.https://ithelp.ithome.com.tw/articles/10234373
> * 2.https://nbviewer.org/github/yenlung/Deep-Learning-Basics/blob/master/colab99_%E5%9C%A8_matplotlib_%E4%B8%AD%E4%BD%BF%E7%94%A8%E4%B8%AD%E6%96%87.ipynb?fbclid=IwAR0qEzwT_62unuwy2aAs5-E5HOVsFus8OZY_b4E0BIjDqPS4vcnEutEMpok

* magic 命令  
  * %quickref 顯示IPython 快速參考卡
  * %magic 顯示所有可用magic命令的詳細文件
  * %debug 在底部進進入互錯器,並顯示最後一個例外追蹤
  * %hist 印出輸入命令(或輸出命令)的記錄
  * %pdb 例外發生後自動進入除錯器
  * %paste 執行剪貼簿中的Python
  * %cpaste 開啟一個特殊的命令提示,用來手動贴上要執行的Python程式
  * %reset 刪除互動名稱空間中現有所有變數和名稱
  * %page OBJECT 透過pager 印出比較好看物件資訊
  * %run script.py 在IPython 中執行一個Python腳本
  * %prun statement 用cprofile執行statement並顯示profiler 產出
  * %time statement 回報單一述句的執行時間
  * %timeit statement 多次執行單一述句,計算平均計算時間,這個功能有助於測量執行時間極短的程式碼
  * %who, %who_ls, %whos 顯示在互動名稱空間中的變數,指定資訊層級或全部輸出
  * %xdel variable 刪除單一變數,並清除IPython內部指向該物件得參照
* Matplotlib 整合  
* 判斷字串種類或形態  
* 引用  
* 高級計算機讚啦  
* Scalar 類型  
* String  
* Scalar 類型  
* String  
* Byte Unicode  
* 轉型  
* None  
* 時間和日期 datetime  
* 控制流程   
  * if、elif、else  
  * for迴圈  
  * 三元表達式  
