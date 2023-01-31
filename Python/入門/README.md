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

| 運算  | 敘述 |
| ------------- |:-------------:|
| a + b      | a加b     |
| a - b      | a減b     |
| a * b      | a乘以b     |
| a / b      | a除以b     |
| a // b      | a除以b取整數,丟棄剩餘部分     |
| a ** b     | 將a作b次方    |
| a & b      | 如果a和b都為True,結果為True;如果運算元是整數,會進行位元AND     |
| a | b      | 如果a或b為True,結果為True;如果運算元整數,會進行位元OR    |
| a ^ b      | 布林運算,當a或b其中一者為True,但不能同時為True結果為True;如果運算元為整數，會進行位元的EXCLUCIVE-OR    |
| a == b      | 如果a和b相等,結果為True     |
| a != b      | 如果a和b不相等,結果為True     |
| a <= b,a < b      | 如果a小於(小於等於)b,結果為True     |
| a > b,a >= b      | 如果a大於(大於等於)b,結果為True     |
| a is b      | 如果a和b參照到同一個Python物件,結果為True     |
| a is not b      | 如果a和b參照到不同一個Python物件,結果為True     | 

* Scalar 類型  

| 類型  | 敘述 |
| ------------- |:-------------:|
|None|Python中的“null"值(None物件只有唯一一個實例)|
|str|String型態,裝載，Unicode字串(UTF-8)|
|bytes|純ASCll位元組(或把Unicode編成位元組)|
|float|倍精度浮點數(64-bi)(注意沒有另外的double型態|
|bool|True或False值|
|int      | 任意精度帶號整數     |

* String  

* Byte Unicode  
* 轉型  
* None  
* 時間和日期 datetime  

| 類型  | 敘述 |
| ------------- |:-------------:|
|%Y|年份四位|
|%y|年份兩位|
|%m|月分兩位[01,12]|
|%d|日期兩位[01,31]|
|%H|小時(24時制)[00,23]|
|%I|小時(12時制)[01,12]|
|%M|分鐘兩位[00.59]|
|%S|秒鐘 [00,61] (60,61來計算閨秒)|
|%w|以整數表示星期幾[0(星期日),6]|
|%U|整年的第幾星期[00,53] 星期天是星期的第一天·在第一個星期天前面的日子歸於"星期0"|
|%W|整年的第幾星期[00,53] 星期一是星期的第一天·在第一個星期天前面的日子歸於"星期0"|
|%z|UTC時區偏移值·形式+HHMM或HHMM:naive型態物件為空值|
|%F|快捷格式%Y-%m-%d(例如:2020-4-18)|
|%D|快捷格式%m-%d-%y(例如:4-18-20)|
* 控制流程   
  * if、elif、else  
  * for迴圈  
  * 三元表達式  
