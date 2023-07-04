# Overleaf 小攻略
### 跳到另一個主題  🐇
* [常用數學式](#常用數學式)  
  * [希臘字母符號](#常用的希臘字母符號)  
  * [函數符號](#常用的函數符號)  
  * [箭頭符號](#常用的箭頭符號)  
  * [相對關係符號](#常用的相對關係符號)  
  * [分式](#分式)  
  * [括號](#括號)
  * [根號](#根號)
  * [含有括號的矩陣](#含有括號的矩陣)
  * [條件式](#條件式)
  * [表格模式](#表格模式)
  * [排版表格建議](#排版表格建議)
  * [項目型列舉](#項目型列舉)
  * [數字型列舉](#數字型列舉)
  * [敘述型列舉](#敘述型列舉)
  * [常用的長度單位](#常用的長度單位)
  * [水平空白](#水平空白)
  * [垂直空白](#垂直空白)
  * [調整行距](#調整行距)
  * [居中與靠邊](#居中與靠邊)
* [PPT加上latex](#PPT)
* [Reference](#Reference)

----
##  Overleaf 的基本功能
* 選擇Blank Project即可新增一個空白專案`建立專案是最基本的喔`
  * 標題\title{...}  
  * 作者\author{...}  
  * 日期\data{...}
> \begin{document}與]\end{document}為文件的開始與結尾，在這之間的內容都屬於會顯示的內容*(會一直不斷使用到)*

| latex的指令  | 含義 |
| ------------- |:-------------:|
| \maketitle      | 顯示\title{...}、\author{...}與\data{...}的位置     |
| \section{...}      | 是段落標題，在...內編輯即可改變標題     |

> main.tex是Latex主要文件。
> 在編輯後，按下Recompile(綠色的♻)即可更新內容

* 清單
```
#Latex提供無編號
\begin{itemize}
   \item *
   \item *
\end{itemize}
```

```
#Latex提供有編號
\begin{enumerate}
   \item *
   \item *
\end{enumerate}
```

*也有巢狀設計的方式，但概念如下 透過begin和end的夾擊方式*
```
#巢狀
\begin{itemize}
   \item *
   \item *
   \begin{itemize}
      \item ⭕
      \item ⭕
\end{itemize}
\end{itemize}
```

* 文字編排
```
\begin{flushleft}
```
  * 向左對齊: flushleft
  * 置中對齊: center
  * 向右對齊: flushright


* 文字風格
```
\begin{🐋}
This is \textit{斜體} style
```
  * 斜體: \textit{...}
  * 粗體: \textbf{...}
  * 下底線: \underline{...}
  * 強調: \emph{...}

* 圖片
新增圖片時，可以新增一個檔案夾儲存所有圖片  
點擊左上方的資料夾圖示(紅框)，輸入資料夾名並按下Create  
新資料夾會顯示在左方列表  
![image](https://ithelp.ithome.com.tw/upload/images/20181213/20113622pqCM1xIEON.png) 
![image](https://ithelp.ithome.com.tw/upload/images/20181213/20113622hCd59JvI6M.png)  
選擇資料夾後，點擊上傳圖示(紅框)  
拖曳要上傳的圖片至虛線方框範圍內即可上傳  
![image](https://ithelp.ithome.com.tw/upload/images/20181213/201136229gQCwLI4xr.png)
Latex無法自行處理圖片檔案，但是可以加入資料包\usepackage{graphicx}
在使用圖片前需要定義資料夾

```
\graphicspath{ {...資料夾位置...} }

```
此範例使用\graphicspath{ {./Images} }
最後在要新增圖片的地方加上\includegraphics{...檔案名...}
![image](https://ithelp.ithome.com.tw/upload/images/20181213/201136221CTzG5IIyj.png)

## 常用數學式
* 數學式子 隨文數式。像是`$f(x)=x^2-2x+1$`
* 數學式子 展示數式(置中感覺)。像是`\[f(x)=x^2-2x+1\] `
```diff
! 數式環境內文字為斜體, 如 if f(x) = x 與 iff(x) = x
! 欲在數式環境中排版正體文字, 可使用 \mbox{· · · }
! 數式環境會自動處理空間, 故空格會被忽略
! 進入與退出隨文數式, 前後間可留一個空格, 效果較佳
!  展示數式行距會自動處理, 前後不必空行
```
![圖片](https://github.com/XiangYun2582/tools/assets/110577553/a8fb0293-426c-4719-99aa-5e92cb5e09f6)
* 數學符號

```diff
! 指令命名原則: \ 符號名稱
! 幾乎涵蓋你所想得到的符號
! 常用自然記得, 不知道或忘了再查亦可
! 無需指令, 可直接鍵入的符號:'+ − = < > / : ! ′ | [ ] ( )'
```
### 常用的希臘字母符號
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/fd7724d1-5016-43e4-ba0b-25a6372b2fa1)

```
\sin \cos \tan \cot
e \ln \log \lim
\max \min \sum \int
```
### 常用的函數符號
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/93037533-a383-4c77-9c39-8022650bb947)

```
\Sigma \sigma \Delta \delta
\alpha  \beta \theta \pi
\phi \lambda \mu \rho
```

### 常用的箭頭符號
`首字大寫表現雙箭頭, 首字小寫表現單箭頭`
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/29ceb205-92d1-4085-a88e-f5599158b1bd)

```
\Rightarrow \Longrightarrow
\Leftarrow \Longleftarrow
\Leftrightarrow \Longleftrightarrow
\rightarrow \longrightarrow
\leftarrow \longleftarrow
\leftrightarrow \longleftarrow
```

### 常用的相對關係符號
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/45f90825-e799-4364-8c27-289d60e70d82)
> 欲表現含等號的不等號, 請在名稱後加上 eq
> 欲表現負的相關符號, 請在名稱前加上 n 或 not, 如
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/eb4f1d7b-9a34-4a44-9011-8d808a6a1eca)

```
= \in \sim \approx
> < \geq \leq
\succ \prec \succsim \precsim
\supset  \subset \supseteq \subseteq
```

### 常用的運算符號及其他符號
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/ae25f0c4-39ad-4c36-a7d1-c9f6c7c0ebe3)
  ```
  \pm \times \cdot \div
  \cap \cup \exists \forall
  \emptyset \partial \infty \mathbb{R}
  ```

### 數式排版方法
* 上下標:` 上標用 ^ , 下標用 , 上下標長於1 字時以 {· · · } 區隔`
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/9f0e97da-1762-4233-8783-1fc4d513ae4b)

```latex
   x^2
   y_1
   p^i_t
   f_X(x)
   A_{i,j}
   e^{\lambda(e^t-1)}
```
 ### 分式
* 簡單分式直接以 `· · · /· · · `表現, 建議用於隨文模式
* 較複雜的分式以`\frac{· · · }{· · · } `表現, 建議用於展示數式
* 簡化指令:`{· · · \over· · · }`
![圖片](https://github.com/XiangYun2582/tools/assets/110577553/07964fd0-e565-492d-aa01-c7a9302629dd)
   
```diff
    ! If $\Delta x 1/\Delta m>0$,
    ! $ \frac{x+y}{1+\frac{y}{x+y}} $
    ! \[ \frac{x+y}{1+\frac{y}{x+y}} \]
```
  
  ### 括號
* 數式高度較高時, 使用原本的括號可能不盡理想, 此時可使用`\left(· · · \right) `指令, 括號大小會自動調整
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/2c84098e-f516-4813-ae42-5e749a8a50dc)
    
```
   \[ (\frac{x}{y}) \left(\frac{du}{dv}\right) \]
```

 ### 根號
* 平方根指令為 `\sqrt{· · · }`
* 三次方根指令為 `\sqrt[3]{· · · }`, 其餘類推
    
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/18839989-24bf-47ef-9301-05ab4e7e3738)
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/52e10627-5021-409e-9a94-8926c79f7908)
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/fbfaee92-111f-4351-aab5-560ac78dcec3) 
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/e0b06d46-5ebb-433f-9975-6eb9de9a9104)  

    
```
   $\sqrt{x^2+y^2}$
   $\sqrt[4]{a^2+b^2+2\sqrt{ab}}$
```

### 例子應用
* 極限  
  * 「趨近於」 可用簡化指令 \to 替代 \rightarrow
  > ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/2048a4ac-d7e1-4709-a8af-73ea0296394c)
   ```diff
   \[ \lim {x \to 0^+} \frac{\sin x}{x}=1 \]
   ```

* 微分
  > ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/94355bea-da32-4cdd-91ef-f7d6d32c790f)
    ```diff
   \[ \frac{dy}{dx}=f’(x)=\frac{\partial y}{\partial x} \]
   ``` 
* 連加
  > ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/50c5c9d7-f31f-43f2-844f-ad3d4d12127a)

    ```diff
   \[ \sum {n=2}^{\infty} \frac{\ln n}{n} \]
   ```
    
* 積分
  * dx 前可用指令 \, 加入一小空格, 效果較佳
  > ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/bc42e9ed-2c93-449c-a4a6-10d1f4bb8093)


    ```diff
   \[ \sum {n=2}^{\infty} \frac{\ln n}{n} \]
   ```

### 矩陣模式
* 矩陣模式array 需使用在數學模式中
* 一列一列輸入, 換下一列用 `\\` , 每欄用 `&` 隔開
* 需設定每行對齊方式: l 靠左 c 置中 r 靠右
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/75d88ade-5aeb-4027-9ffd-1f0980dd6434)

```
\[ \begin{array}{lcr}
a+b & 0 & 0 \\
0 & b+c & 0 \\
0 & 0 & c+a
\end{array} \]
```

### 含有括號的矩陣
* 利用\left(· · · \right) 使括號自動調整大小
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/518cc837-f64d-4371-8ea6-28537fbaee59)

```
\[ \left( \begin{array}{cc}
\sigma 1^2 & \sigma {12} \\
\sigma {21} & \sigma 2^2
\end{array} \right) \]
```

### 條件式
* 只希望單邊有括號時, 可利用 . 取代原括號, 如 \left(· · · \right.
* 大括號{· · · } 往往是指令的一部分, 故單純排出大括號要用 \{· · · \}
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/03f7d7cd-2500-4de3-8f8e-2e0d4a012808)

```
\[ f(x)= \left\{ \begin{array}{ll}
x+1 & \mbox{if } x \leq a\\
x^2 & \mbox{if } x > a
\end{array} \right. \]
```

### 表格
* 表格模式 `tabular` 與矩陣模式 array 類似
* 換下一列用 `\\` , 每欄用 & 隔開, 用 `\hline` 加入水平線
* 需設定每欄對齊方式: `l` 靠左 `c` 置中 `r` 靠右, 用 `|` 加入垂直線
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/e412c66f-ff58-4ca3-9248-6019a14c8fa4)

```
\begin{tabular}{|c|cc|}
\hline
Q & TR & TC \\
\hline
1 & 6 & 5 \\
2 & 12 & 8 \\
\hline
\end{tabular}
```

### 排版表格建議
* 表格中不需畫垂直線
* 單位應排於欄位上端, 而非欄位內
* 小於1 的小數, 小數點前應加上0
* 小數點應上下對齊
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/22822a8d-ab0c-4745-a05c-e30a8846adc6)

### 項目型列舉
* 使用 itemize 環境, \item 表現每一點
* 自動縮排, 不需另外空行
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/66d2ff0e-bd14-4e40-be3b-d0a4c2b06807)

```
$f$ 在 $a$ 點連續, 若:
\begin{itemize}
\item $\lim {x\to a} f(x)$ 存在
\item $f(a)$ 有定義
\item $\lim {x\to a} f(x)=f(a)$
\end{itemize}
```

### 數字型列舉
* 使用 enumerate 環境, \item 表現每一點
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/3b4e295c-0086-45e8-8048-ffc571167a84)

```
$f$ 在 $a$ 點連續, 若:
\begin{enumerate}
\item $\lim {x\to a} f(x)$ 存在
\item $f(a)$ 有定義
\item $\lim {x\to a} f(x)=f(a)$
\end{enumerate}
```


### 敘述型列舉
* 使用 `description` 環境, \item[· · · ] 表現每一點
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/8a71e6b2-09b9-4c55-87f9-2cf2a7586692)

```
$f$ 在 $a$ 點連續, 若:
\begin{description}
\item[第一] $\lim {x\to a} f(x)$ 存在
\item[第二] $f(a)$ 有定義
\item[第三] $\lim {x\to a} f(x)=f(a)$
\end{description}
```

### 常用的長度單位

> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/8f65b0bc-b006-422f-aec0-3c9ec3a19e70)

### 水平空白
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/457ecfb7-a529-4f5f-bccb-c4830671a324)

### 垂直空白
> ![圖片](https://github.com/XiangYun2582/tools/assets/110577553/5cfbb76b-27af-4994-8067-fe8a891bf2ac)

### 調整行距
* 一般設定: 在 全文設定區 輸入

```
\linespread{1.2} #行距設為原本的 1.2 倍
\setlength{\parskip}{15pt} #段落間距設為 15 點
\setlength{\parindent}{0cm} #每段首行縮排設為 0
```
* 特殊調整: 於 強迫換行 後加上 [長度] , 如 \\[4mm]
### 居中與靠邊

```
\begin{center}· · · \end{center} #環境內文字置中
\begin{flushleft}· · · \end{flushleft} #環境內文字靠左
\begin{flushright}· · · \end{flushright} #環境內文字靠右
```

## PPT
* [PPT 上打 LaTeX 數學方程式](https://show6114.com/2017/08/11/ppt-latex-equation/comment-page-1/)

## ![Generic badge](https://img.shields.io/badge/%E5%9C%96%E6%A1%88-XiangYun%E7%A8%8B%E5%BC%8F-purple?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZD0iTTIzLjk5OSAxMi40NjVhOS42MDEgOS42MDEgMCAwIDEtMTkuMjAzIDBoMS4wN2E4LjUzIDguNTMgMCAxIDAgOC41MzMtOC41M3YtMS4wN0E5LjYgOS42IDAgMCAxIDI0IDEyLjQ2M3ptLTkuNi0zLjJhMy4yIDMuMiAwIDEgMCAzLjIgMy4yIDMuMiAzLjIgMCAwIDAtMy4yLTMuMnptLTIgMC0uNi02LjY3Mi0yLjQ2MiAxLjkyLTEuNDYtMS40NGE0LjY3IDQuNjcgMCAwIDAtNS42Mi0uMzdsLTIuMDIgMS4zYS41NC41NCAwIDAgMC0uMTUuNzQuNTQuNTQgMCAwIDAgLjc0LjE1bDItMS4zMWEzLjY0IDMuNjQgMCAwIDEgNC4yOS4yMmwxLjM3IDEuMzgtMi4yOSAxLjgyMXoiLz48L3N2Zz4=)`完了`
## Reference
* [Overleaf建立新的project](https://ithelp.ithome.com.tw/articles/10210334)
* [cwTEX速成-張耕齊](http://homepage.ntu.edu.tw/~ntut019/cwtex/cwTeX-Intro-Chang.pdf) 
* [臺灣大學碩博士論文 XeLaTeX 模版 (社會科學)](https://github.com/kengchichang/ntuthesis-socsci/wiki)  🔥🔥🔥極度推薦
* [資訊科學資源](https://weichetsai.com/resource/cs_resource/)
![image](https://github.com/XiangYun2582/tools/blob/main/overleaf/genshin.gif)
