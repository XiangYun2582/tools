# Overleaf 小攻略
### 跳到另一個主題  
* [Overleaf 的基本功能](#常用數學式)    

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




## PPT 加上latex
* [PPT 上打 LaTeX 數學方程式](https://show6114.com/2017/08/11/ppt-latex-equation/comment-page-1/)




## ![Generic badge](https://img.shields.io/badge/%E5%9C%96%E6%A1%88-XiangYun%E7%A8%8B%E5%BC%8F-purple?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZD0iTTIzLjk5OSAxMi40NjVhOS42MDEgOS42MDEgMCAwIDEtMTkuMjAzIDBoMS4wN2E4LjUzIDguNTMgMCAxIDAgOC41MzMtOC41M3YtMS4wN0E5LjYgOS42IDAgMCAxIDI0IDEyLjQ2M3ptLTkuNi0zLjJhMy4yIDMuMiAwIDEgMCAzLjIgMy4yIDMuMiAzLjIgMCAwIDAtMy4yLTMuMnptLTIgMC0uNi02LjY3Mi0yLjQ2MiAxLjkyLTEuNDYtMS40NGE0LjY3IDQuNjcgMCAwIDAtNS42Mi0uMzdsLTIuMDIgMS4zYS41NC41NCAwIDAgMC0uMTUuNzQuNTQuNTQgMCAwIDAgLjc0LjE1bDItMS4zMWEzLjY0IDMuNjQgMCAwIDEgNC4yOS4yMmwxLjM3IDEuMzgtMi4yOSAxLjgyMXoiLz48L3N2Zz4=)`完了`
## Reference
* [Overleaf建立新的project](https://ithelp.ithome.com.tw/articles/10210334)
* [cwTEX速成-張耕齊](http://homepage.ntu.edu.tw/~ntut019/cwtex/cwTeX-Intro-Chang.pdf) 
* [臺灣大學碩博士論文 XeLaTeX 模版 (社會科學)](https://github.com/kengchichang/ntuthesis-socsci/wiki)  🔥🔥🔥極度推薦
* [資訊科學資源](https://weichetsai.com/resource/cs_resource/)
![image](https://github.com/XiangYun2582/tools/blob/main/overleaf/genshin.gif)
