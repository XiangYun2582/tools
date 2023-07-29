# ![Generic badge](https://badgen.net/badge/icon/C%E8%AA%9E%E8%A8%80?icon=visualstudio&label&logo=appveyor.svg)

### 跳到另一個主題  🐇
* [初步認識](#初步認識)
* [整合開發環境介紹](#整合開發環境介紹)
* [整合開發環境安裝](#整合開發環境安裝)
  * [建立一個專案](#建立一個專案)
  * [一些小設定](#一些小設定)
  * [編譯器的錯誤訊息](#編譯器的錯誤訊息)
  * [程式讀取的原理](#程式讀取的原理)
  * [字元跳脫](#字元跳脫)
  * [求數字和](#求數字和)
----
>前面視為基礎訓練

* 章節

| 章節名稱  | 跳轉 |
| ------------- |:-------------:|
| left foo      | [程式讀取的原理](#程式讀取的原理)    |
| left bar      | right bar     |
| left baz      | right baz     |

----

### 初步認識
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `為甚麼我要學C語言`
```diff
! 1.希望可以控制電腦
! 2.跟電腦溝通
```
  * 機器語言和組合語言
    * 只有機器看得懂的0 1
    * 組合語言(組譯器Assembler)人類取名字Andy->變成0 1:`LOAD A`、`ADD B`、`STORE`
  * 高階語言
    * SUM=A+B:`C`、`C++`、`Python`
     
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `特別`  
  * 接近人類高階語言
  * C語言具有可攜性:`較容易轉為不同機器語言`
  * **最有效率程式**:`有效率簡單直接`、`和最接近機器的方式存取記憶體`

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `標準C語言??`
  * 很多標準和版本-> C89最重要版本
  * ISO C標準 -> C90
  * C99 -> ANSI C 採用
  * C11 版本最新
  > 吵架要問清楚本版本:**最常用的是ANSI C(C89)**、**最新的版本是ISO C(C11)**
  > 現在學得可以用ㄇ?sol:相前相容(大部分的情況下)
  
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `撰寫C語言程式需要的工具`
  * 包含文字編輯器和C語言編譯器
    * 文字編譯器(text editor):white_check_mark:`Notepad(記事本)`、`Sublime Text`、`Notepad++`、`Vim`、`EMacs`
    * C語言編譯器:將C語言的語法(原始碼)編譯成可執行檔
![image](https://github.com/XiangYun2582/tools/assets/110577553/fdd97de9-397f-4f16-b76d-a847f89c329a)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `常見的編譯器`
  * Visual C++:
    * 優點:業界、學校
    * 缺點:只能在windows(不行的有嵌入式平台:Linux、FreeBSD或Mac OS)
  * GCC C
    * 優點:多平台、自由軟體(無版權)
    * 缺點:好像沒有
  * Clang
    * 優點:多平台、自由軟體(無版權)
    * 缺點:好像沒有
   
![image](https://github.com/XiangYun2582/tools/assets/110577553/c15a2878-2d6e-414d-8885-c5f04ecdefe4)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `編譯器差異`
  * 效率
    * 從程式碼產生機器碼的效率(寫好run等多久)
    * 機器碼執行起來的效率(不同的編譯器不一定會編譯成一模一樣的機器碼)*C語言只有規定語言行為
  * 相容性
    * 編輯器再標準外的自訂擴充功能(非標準內的功能盡量不要用，綁死)`似瀏覽器`
  * 行為一致性
    * **實作定義(Implementation-defined)行為**
      * 不同版本或是使用不同設定的同款編譯器可能產生不一樣的行為**可怕**
      * 允許原因:彈性、效率、不同廠牌的感覺(差異性 32bit 64 bit)

### 整合開發環境介紹
![image](https://github.com/XiangYun2582/tools/assets/110577553/aafc91ae-b627-4c9c-8388-e33ee95b8713)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `甚麼是開發環境`
```diff
! 首先我是很菜很菜的初學者
! 編譯器不會去使用太複雜
! 可能會不斷去做編譯修改
@整合開發 解決--圖形化介面GUI@
```
  * 簡稱IDE輔助程式開發人員開發軟體的軟體
  * 通常是圖形化界面(GUI)，主要包含:`提示錯誤`、`其他的選擇類似studio`
    * 文字編輯器
    * 編譯器(可能內附或是額外安裝)
    * 自動建置工具
    * 此外可能包含除厝器、視覺化設計界面和版本控制工具等等協助開發軟體的工具
![image](https://github.com/XiangYun2582/tools/assets/110577553/089284c8-3778-4db3-9092-e472cb275057)
* 種類
  * Visual C++:
    * 優點:功能強大眼花撩亂、win開發建議
    * 缺點:啟用專案不方便、初學花費步驟多
  * Dev C++
    * 優點:早期自由軟體、友善、執行檔簡單、幫助學習
    * 缺點:業界使用很低
  * Code::Block
    * 優點:多平台
    
![image](https://github.com/XiangYun2582/tools/assets/110577553/9a786c9d-f97f-41e7-ac68-790cbd59223e)

**使用哪一個好、業界選擇、影片老師建議都不知道就使用Dev C++或是Code::Block**

```diff
- 自己查的調查Dev C++ 似乎不看好
! Dev C++ 原開發者早在 2006 年就公開宣佈不再維護該專案，雖然後來有人接手開發，但距離上一個穩定版也已經三年了。C++ 是一個持續進化中的程式語言，Dev-C++ 是一個幾乎停滯的專案
```
**有篇文章強力批判:arrow_down_small:

![image](https://github.com/XiangYun2582/tools/assets/110577553/b47b29cf-c483-48ee-9043-bafa21bbd5c5)

* 自行評估我也不知道是不是事實: [來源](https://samtsai.org/2018/10/02/222-please-dont-recommend-dev-cpp/)

### 整合開發環境安裝
**開始走路囉**
![image](https://github.com/XiangYun2582/tools/blob/main/C%E8%AA%9E%E8%A8%80/Klee-(Genshin-Impact)-Genshin-Impact-%D0%98%D0%B3%D1%80%D1%8B-seseren-6248683.gif)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `為甚麼選擇Code::Block`
  * 理由:對初學者友善`容易安裝`、`很快就可以寫出一個小程式`
  * 優勢:
    * 支援多個作業系統(windows/Linus/macOS)
    * 開源專案
    * 可以裝在隨身碟
> 安裝網站:https://www.codeblocks.org/
----
> * 第一步  

![image](https://github.com/XiangYun2582/tools/assets/110577553/a1fa1fd4-e16f-492e-969d-333c70f6fb64)  

> * 第二步  

![image](https://github.com/XiangYun2582/tools/assets/110577553/adeda9e5-28cc-4ae4-983f-a2df02eb821f)  

>   * 用最簡單就好啦  

![image](https://github.com/XiangYun2582/tools/assets/110577553/f9501410-5d7a-409e-8afb-cfc1a4c4149d)  

----
* 先來試試看Code::Block

![image](https://github.com/XiangYun2582/tools/assets/110577553/5b98a862-7ed5-4d4b-ba8a-3f38cf0fc710)  

* 用怕點下去就對了
  
![image](https://github.com/XiangYun2582/tools/assets/110577553/5750e210-7b8e-48f3-82ae-0069efa4def1)  

* 關閉她(注意案Yes和打勾勾以後就不會煩你)  

![image](https://github.com/XiangYun2582/tools/assets/110577553/7831c0c6-5e11-4258-97db-955759f5ba48)


#### 建立一個專案
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `建立一個專案`

![image](https://github.com/XiangYun2582/tools/assets/110577553/7e99a262-378e-4902-8d35-39ecded4e1fc)
* 然後右邊就會有文字編輯區`*Untitle1`

![image](https://github.com/XiangYun2582/tools/assets/110577553/96de0683-e617-4c30-92f8-e2ab784e2051)

* 儲存 `crtl + s`

![image](https://github.com/XiangYun2582/tools/assets/110577553/bfc3e6a4-3cbc-4692-b8bf-13c6cea34a83)  

* 執行專案 `F9`

![image](https://github.com/XiangYun2582/tools/assets/110577553/c75a3d36-9218-4ab8-ba21-8df29f2fd92c)  

* 用記事本看

![image](https://github.com/XiangYun2582/tools/assets/110577553/9d027124-813c-4706-81a9-a9540040e863)  

```diff
+ 顏色可以幫助判斷
```

***成功的結果**
![image](https://github.com/XiangYun2582/tools/assets/110577553/897d5082-9bc0-4dd4-b5ca-302104284911)

#### 一些小設定
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `Code::Block設定變更好用`
* open 舊的檔案

![image](https://github.com/XiangYun2582/tools/assets/110577553/3b751acc-cc1f-4abe-ba0c-9213680c02e5)  

![image](https://github.com/XiangYun2582/tools/assets/110577553/13b45960-616c-418b-88ca-4cdab59329a0)  

* 設定
  * 文字
![image](https://github.com/XiangYun2582/tools/assets/110577553/9cc6c656-6a52-4f78-8052-37706ca11e34)  

![image](https://github.com/XiangYun2582/tools/assets/110577553/69bdf073-2f60-43d5-8f2a-a8f55cd47ad4)  

![image](https://github.com/XiangYun2582/tools/assets/110577553/d20e24df-57a6-4cb9-b7ad-5e14fc454995)  

  * 介面  

![image](https://github.com/XiangYun2582/tools/assets/110577553/94646481-4322-46ea-85bd-7473bd7716a5)

  * cmd太小  
    
![image](https://github.com/XiangYun2582/tools/assets/110577553/d1a940f2-9867-4554-b3a0-6832627f3748)  

#### 編譯器的錯誤訊息

* 會有紅紅的

![image](https://github.com/XiangYun2582/tools/assets/110577553/bebf152e-96f4-4803-b5ca-3ccd523efb08)

* 或是看log `F2`

![image](https://github.com/XiangYun2582/tools/assets/110577553/6dda3021-18d5-4d33-a924-0a4233d13a55)

* 就可以清楚了解發生什麼事 `紅色可能是那一行或是上一行`

![image](https://github.com/XiangYun2582/tools/assets/110577553/92c386c3-afe0-4009-ba5a-e4965dc3361c)

#### 程式讀取的原理

C語言的程式進入點(程式開始執行的位置)，跟一些程式的運作模式不太一樣，並不是從頭一行一行讀。
是從接在main字後面的左括號開始`{`，所以從第四行開始。

![image](https://github.com/XiangYun2582/tools/assets/110577553/f0287d17-b315-4859-8356-54ce5f22b3d2)

![image](https://github.com/XiangYun2582/tools/assets/110577553/0912801a-7efe-4d4f-a2ce-9c01035047a5)

由此開始就要開始分號就像是文章的時候一樣(一個句子的結束)，而句子一樣會有先後。

* `{}`一對裡面東東我們稱之為區塊，也類似我們文章的段落。
* printf 其實就是一個函式，其實很類似R程式或Python裡的`print`。
  * 字串要用`""`包住，要跟一般程式碼做一個區別，跟之前學的無異。
  
![image](https://github.com/XiangYun2582/tools/assets/110577553/4a9ebdb1-ea2f-4b47-aff0-aecbbcb6725b)

* 重點來了，由於`printf`是另外一個事先寫好的程式碼，所以要先用
```c
#include <stdio.h>
```
的方式，事先提出stdio.h檔案在最前面讀進來，這其實很類似Python的import或是R的library。
> stdio.h為C語言內建的檔案

![image](https://github.com/XiangYun2582/tools/assets/110577553/3edd2451-0467-4cf9-a2f4-2ad01261265d)

* C語言裡頭會有return的指令，程是正常結束在main裡面的指令。用途就是要回傳一個結果。
  * 這裡是回傳0，代表成功。
  
![image](https://github.com/XiangYun2582/tools/assets/110577553/df82c8cb-7647-488c-a385-081feec70608)

* 一些有趣的點，printf並不會換行，而是直接接續。

![image](https://github.com/XiangYun2582/tools/assets/110577553/7d18cb10-054b-4884-a0fd-11ceeb7cd2f4)

![image](https://github.com/XiangYun2582/tools/assets/110577553/7afa9367-6c01-4588-a3d3-26c8b9ccc5ed)

#### 字元跳脫

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `字元跳脫`

| 功能  | 語法 |
| ------------- |:-------------:|
| 定位字元(TAB)    | \t    |
| 換行字元(ENTER)  | \n     |
| 回車?游標移置行首| \t |
|單引號|\'|
|雙引號|\"|
|反斜線|\\|
|空字元(NULL)|\0|

* 參考資料: [連結](https://www.csie.ntu.edu.tw/~b98902112/cpp_and_algo/cpp02/escape_character.html)

* 換行\n 影片老師給的小功課

![image](https://github.com/XiangYun2582/tools/assets/110577553/4c4b2d3f-a353-4154-ad16-8cb91e3ab612)

* 跳脫序列的作法:反斜線`\`

![image](https://github.com/XiangYun2582/tools/assets/110577553/b0e34893-152c-4749-9740-70af59986eb8)

* 想要印反斜線，多打一個即可。

![image](https://github.com/XiangYun2582/tools/assets/110577553/768b78ac-fc7b-48c1-a16b-bede0853edaf)

```c
#include <stdio.h>

int main(){
    printf("Hello world!\n");
    printf("H     H     A\nH     H    A A\nHHHHHHH   A   A\nH     H  AAAAAAA\nH     H  A     A");
    return 0;
}

```

![image](https://github.com/XiangYun2582/tools/assets/110577553/bcd16983-ca3e-4ccf-9fc2-1fb9bd5019db)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `簡單的文字圖形`

![image](https://github.com/XiangYun2582/tools/assets/110577553/d33622e4-b426-49e3-9e33-0c320ee631aa)

* 程式碼下面不一定效率比上面好，即使寫下面的程式碼比較快但可讀性很差，也比較不好改所以比較後上面比較好**對於初學者(較容易維護變更)**

![image](https://github.com/XiangYun2582/tools/assets/110577553/80f49bcf-96f7-4e76-ab09-c0027d3f7b9c)

* 折衷作法?

![image](https://github.com/XiangYun2582/tools/assets/110577553/4d54d3b3-4ca6-4a9a-8476-623dbc243e36)

#### 求數字和

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `兩個數字`
* 變數型態(補充)

| 型態  | 中文意思 |英文字義|可儲存的資料|
| ------------- |:-------------:|:-------------:|:-------------:|
| `int`    | 整數    |Integer|100、-5、1246 ...|
| `float`  | 浮點數(小數)   |floating point|3.14159、4.3、-1.1 ...|
| `char`| 字元(半形字) |Character|'a'、'R'、'1'、'@'、'*' ...|
| `string`| 字串(文句)|String|"Hello"、"^_^"、"Rock!" ...|
| `bool`| 布林(是非)|boolean|true、false|
  * 複雜

![image](https://github.com/XiangYun2582/tools/assets/110577553/0d49384c-664f-4bb5-ba8e-80536abfa372)

  * 參考資料: [連結](https://openhome.cc/Gossip/CGossip/Datatype.html)

* 簡單整數位加總
  * 注意:如果要使用某變數要宣告，電腦就會保留(儲存在記憶體或空間)起來➡️它就是整數之類。
```c
#include <stdio.h>
int main(){
    //宣告(定義)integer1是整數，也就是我們熟悉的變數
    //一共存了三個空間
    int integer1;
    int integer2;
    int sum;
    //印這個字串
    printf("Please enter the first integer: ");
    //scanf表示從鍵盤讀入資料，%d表示十進位，&是取指運算子
    scanf("%d",&integer1);
    printf("Please enter the second integer: ");
    scanf("%d",&integer2);
    sum = integer1 + integer2;
    printf("Sum is %d.\n",sum);
    return;
}
```
![image](https://github.com/XiangYun2582/tools/assets/110577553/eef4850e-2e02-470d-ada4-718b06d96e23)

* 類似跳脫概念

![image](https://github.com/XiangYun2582/tools/assets/110577553/754e4074-c190-400a-8367-9b845c018b84)
![image](https://github.com/XiangYun2582/tools/assets/110577553/66b213da-89b7-4bb6-802c-a16b747e344f)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `三個數字`








* ![Generic badge](https://img.shields.io/badge/%E5%9C%96%E6%A1%88-XiangYun%E7%A8%8B%E5%BC%8F-purple?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZD0iTTIzLjk5OSAxMi40NjVhOS42MDEgOS42MDEgMCAwIDEtMTkuMjAzIDBoMS4wN2E4LjUzIDguNTMgMCAxIDAgOC41MzMtOC41M3YtMS4wN0E5LjYgOS42IDAgMCAxIDI0IDEyLjQ2M3ptLTkuNi0zLjJhMy4yIDMuMiAwIDEgMCAzLjIgMy4yIDMuMiAzLjIgMCAwIDAtMy4yLTMuMnptLTIgMC0uNi02LjY3Mi0yLjQ2MiAxLjkyLTEuNDYtMS40NGE0LjY3IDQuNjcgMCAwIDAtNS42Mi0uMzdsLTIuMDIgMS4zYS41NC41NCAwIDAgMC0uMTUuNzQuNTQuNTQgMCAwIDAgLjc0LjE1bDItMS4zMWEzLjY0IDMuNjQgMCAwIDEgNC4yOS4yMmwxLjM3IDEuMzgtMi4yOSAxLjgyMXoiLz48L3N2Zz4=)
* 我學習的對象:https://www.youtube.com/watch?v=iZ9W2nPKIwU&list=PLY_qIufNHc293YnIjVeEwNDuqGo8y2Emx&index=2&ab_channel=FeisStudio
* 無關的小工具[Generic badge](https://gist.github.com/rxaviers/7360908)
* 參考資料:[百科全書1](http://kaiching.org/pydoing/c.html)
* 參考資料:[百科全書2](https://www.csie.ntu.edu.tw/~b98902112/cpp_and_algo/cpp/variable_type_and_declare.html)
* 參考資料:[百科全書3](https://openhome.cc/Gossip/CGossip/)
