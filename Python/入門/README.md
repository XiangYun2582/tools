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
***術語 感覺是什麼術式(如蔓蔓樺)
* 資料探勘 munge munging wrangling 
* 虛擬程式碼 Psedocode
* 糖衣語法 sysntactic sugar(不會加入新功能的程式碼，意味更方便使用)
* 術語  
* 工作路徑getwd  
* magic 命令  
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
