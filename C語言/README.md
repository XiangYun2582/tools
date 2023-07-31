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
  * [程式碼工整秘訣-可讀性](#可讀性)
  * [數值交換](#數值交換)
> 初學者建議:[連結](https://www.youtube.com/watch?v=QROGWhR97G4&list=PLY_qIufNHc293YnIjVeEwNDuqGo8y2Emx&index=20&ab_channel=FeisStudio)
----
> 前面視為基礎訓練

* 章節

|🐦章節   | 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- | ------------- |:-------------:|:-------------|
| 第一章     | 資料型態    | 資料型別、整數型別簡介、浮點數簡介、浮點數簡介、字元型別簡介、字元大小寫轉換練習| [資料型態](#資料型態)    |
| 第二章     | 運算與表達式    |資料的儲存與處、整數與浮點數的算術運算、賦值運算、是非對錯、等號與關係運算、邏輯運算  | [運算與表達式](#運算與表達式)    |
| left foo     | left baz     | | right baz     |

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
> **後來我後悔 其實全裝也沒有不好**
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
* 簡化`類似迭代，省記憶體`
```c
#include <stdio.h>
int main(){
    int integer,sum;
    //印這個字串
    printf("Please enter the first integer: ");
    //scanf表示從鍵盤讀入資料，%d表示十進位，&是取指運算子
    scanf("%d",&integer);
    sum = integer;
    printf("Please enter the second integer: ");
    scanf("%d",&integer);
    sum = sum + integer;
    printf("Please enter the third integer: ");
    scanf("%d",&integer);
    sum = sum + integer;
    printf("Sum is %d.\n",sum);
    return 0;
}
```

> 問題:
> 1.省記憶體，但程式的效率並沒有比較好，占用ˋ中央處理器ˋ比較多(指令)。  
> 2.占用ˋ記憶體ˋ，可以比較快的效率。(前提是不要用完記憶體，不然就怠速)
----
```diff
! 重點回顧:
- 正確性:廢話程式碼要寫對(可讀性)。
- 維護性:方便修改(可讀性)。
@@每個人的可讀性都不同，初學者跟老鳥差異"主觀"@@
- 效率
+ 處理器的使用(中央處理器-指令-占用的時間)
+ 記憶體的使用(記憶體被用完-搬運到硬碟，才可以繼續用記憶體)
- 擴展性:需求變化變多。
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/d517c10c-a01a-45f8-889f-e0ca2e63f55d)

#### 可讀性
* 工整的程式碼?程式的寫作風格(困難、習慣、不是能跑就好)
* 偷懶方法
![image](https://github.com/XiangYun2582/tools/assets/110577553/02fe15d6-79ea-48fd-a22b-2c014816cab1)
* 標準  
  * 每一句述句盡量單獨一行  
    * 分號(;)後要換行  
  * 每一個區塊的開頭跟結尾要換行  
    * 左大括號({)後與 又大括號(})前要換行
  * 每句前面需有固定留白(縮排)
    * 一般可以用2到8的空白字元或一個跳位符(Tab)縮排
  * 複習: [連結](https://www.youtube.com/watch?v=N1G6pjBzKiY&list=PLY_qIufNHc293YnIjVeEwNDuqGo8y2Emx&index=18&ab_channel=FeisStudio)
![image](https://github.com/XiangYun2582/tools/assets/110577553/ef481581-3777-4186-8df4-9d2f744e1f4f)

#### 數值交換
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `兩個數字`

* 暫存作法
```c
#include <stdio.h>
int main(){
    int integer1,integer2;
    printf("Please enter the first integer: ");
    scanf("%d",&integer1);
    printf("Please enter the second integer: ");
    scanf("%d",&integer2);

    //新增程式碼使integer1與integer2交換
    //(integer1,integer2)=(integer2,integer1)但C語言無法這樣做[Error]
    int temp = integer1;//備份起來
    integer1 = integer2;
    integer2 = temp;

    printf("integer1: %d.\n",integer1);
    printf("integer2: %d.\n",integer2);
    return 0;
}
```
![image](https://github.com/XiangYun2582/tools/assets/110577553/cd95483a-527b-4b92-8e8c-852a450369dc)

* 另一個做法
```c
#include <stdio.h>
int main()
{
    int integer1,integer2;
    printf("Please enter the first integer: ");
    scanf("%d",&integer1);
    printf("Please enter the second integer: ");
    scanf("%d",&integer2);

    //新增程式碼使integer1與integer2交換
    integer1 = integer1+integer2;
    integer2 = integer1-integer2;
    integer1 = integer1-integer2;

    printf("integer1: %d.\n",integer1);
    printf("integer2: %d.\n",iteger2);
    return 0;
}

```
![image](https://github.com/XiangYun2582/tools/assets/110577553/20f891fa-8631-4cb0-9722-a431e955279a)

----
## 正式進入章節
![image](https://github.com/XiangYun2582/tools/assets/110577553/b03766d2-53a0-4274-ac63-16f20543b847)  

[回到上頭](#初步認識)
## 資料型態

| 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- |:-------------|:-------------|
| 資料型別    | 位元組(byte)跟位元(bit)、常見的內建資料型別資料型別、定義變數、命名限制| [資料型別](#資料型別)    |
| 整數型別簡介    | 位元數字組合、整數的溢位、大數問題  | [整數型別簡介](#整數型別簡介)     |
| 浮點數簡介    | 實數表示法、有效數字、科學記號表示法、科學記號表示法 | [浮點數簡介](#浮點數簡介)     |
| 將printf或scanf用在不同的資料型別(I/O)    | printf的使用、scanf 的使用、隱性轉型與顯性轉型 | [printf或scanf](#printf和scanf)     |
| 字元型別簡介   | 儲存字元、字元編碼、使用char字元型別、字元計算  | [字元型別簡介](#字元型別簡介)     |
| 字元大小寫轉換練習    | 怎麼選擇要使用的型別Summary | [字元大小寫轉換練習](#字元大小寫轉換練習)     |


### 資料型別
* 資料處理核心問題
  * 記憶儲存，怎麼方式?
  * 怎麼計算?結果?
資料型別會決定⬆️

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `資料儲存`  
* 電腦內部具有記憶儲存空間而該空間是以位元組(byte)單位所組成:  
* 每個位元組(byte)由多個位元所構成(bit)  
  * 一個位元組一般由8個位元所構成(註:實際個數為實作定義)，有些編譯器或設定可能不是8個暫且相信。  
  * 每個位元(bit)可以表示為0或是1兩種值
* 任何資料型別的資料都可以轉換成由0或1所組成的序列來表示  
> 有煩惱過隨身碟可以存音樂、圖片嗎?▶️因為都是存為0和1的資料
 
![image](https://github.com/XiangYun2582/tools/assets/110577553/28b5cc78-4064-4580-b5f1-f8b0da759897)
> 一連串位元組做記憶  

* C語言常見的內建資料型別
 
| 資料型別 | 名稱 |大小(位元組) |例子|
| ------------- |:-------------:|:------------:|:------------:|
| 短整數{shorrt integer}| short int   |2* | 32    |
| 整數(integer)    |int| 4* | 32    |
| 長整數(long integer)   | long int| 4*  | 32     |
| 字元(character)   | char| 1 |'3'   |
| 單精度浮點數(sungle-precision floating point)   | float| 4* | 3.2    |
| 倍精度浮點數(double-precision floating point)  | double | 8* |3.2    |
| 無  | void |? |    |

> *號為實作定義，會變動。

* 使用sizeof 看所佔記憶體空間大小
  * 許多型別占用記憶體空間大小都是`實作定義`的。隨著使用的編譯器或是設定的不同而可能有不一樣。
    * 例如:long int不一定是佔4個位元組大小，在某些64 bit的編譯器中，long int可能是佔8個位元或其他大小。
  * 我們可以用sizeof 運算子去求出在你使用編譯器上某個值或是型別所佔記憶體大小(單位是位元組)。
  
```c
printf("long int: %d.\n",sizeof(long int))
//sizeof 會算出該數值或型別佔用幾個位元組
```

* 定義變數
  * 變數名稱在使用前需要宣告或定義
  * 變數定義時需要指定名稱與型別
    * 資料型別 變數名稱
    
```c
int num;
```

> 讀取未指定值的變數在部分情況下「未定義行為」，什麼都有可能。否則讀它沒有意義。
 
    * 在定義時也可以直接指定初始值，我們稱初始化:  

```c
int num=0;
```

> 為甚麼不直接給定?因為設為0，是一個代價。多給一個指令，類似計算機歸0。

* 命名限制
  * 在C語言要對名稱命名時有許多限制
  * 名稱由英文大小寫字母、數字和底線所構成，數字不能為開頭，字母大小寫不同代表不同的名稱。
  * 作為保留字具有用途，不可作為要命名的名稱使用:
  
![image](https://github.com/XiangYun2582/tools/assets/110577553/f1a9a03c-07c4-4f1b-b0b4-da8686726740)

* 不同型別的差異
  * 資料的意涵不同
    * 整數(int)與字元(char)
  * 表示的原理不同
    * 整數(int)與浮點數(float)
  * 可表示的值範圍不同
    * 短整數(short int)與長整數(long int)
  * 可表示的精確度的不同
    * 單精度浮點數(float)與倍精數浮點數(double)
  * 有正負號的不同
    * 有號整數(int)與無號整數(unsigned int)

### 整數型別簡介
* 位元(bit)與位元組(byte)
  * 一個位元(bit)可以儲存一個0或1
  * 一個位元組(byte)通常可以儲存8位元
    
* 一個位元可以儲存0和1(規則有你定➡️資料型別)只能表示兩種整數

![image](https://github.com/XiangYun2582/tools/assets/110577553/98dc8e80-3e59-4ce9-82d8-53a9baf3bf5b)

* 兩個位元可以儲存4種組合

* 八個位元，一個位元組
  * 256種不同的組合=2**8
  * 如果從0開始選，就有0至255**(無號數)**
  * 缺點:負數沒有存在
  * ➡️-128到127砍一半。**(有號數)**
 
![image](https://github.com/XiangYun2582/tools/assets/110577553/d6f7870c-9cd3-408e-8af0-dbbca89c9781)
 
* 4個位元組=32個位元
* 32個位元 4,294,967,296組合

* 整數的溢位(overflow)
  * 大小為4個位元組的整數別可以儲存將近十位數的整數
    * 如果運算超過儲存可表示的範圍呢?
  * 試著寫個，算出10000^3的結果?
  * 溢位表示數值運算的結果超過原本型別可以表示的範圍。
    * 溢位可能會造成未定義行為(不允許、無法預期)
* 大數問題
  * 如果要處理的整數數值範圍較大，可能要使用表示範圍比較大的整數型別:
    * 也就是使用佔用大小比較大的整數型別
    * 使long int取代int
    * 我們還有更大的long long int
    > **long long int在C99後才支援**
  * long long還是可能超過?
    * 使用複合型別(陣列等)

### 浮點數簡介
* 實數表示法
  * 0到1之間有多少整數(切割)
  * 0到1之間有多少實數(切割)
  * 需要多大空間才可以儲存所有實數的可能?圓周率?
  * 使用約略值3.14➡️誤差怎麼辦?

* 浮點數(floating point)是可用來表示實數的一種方法
  * 浮點數可以表示帶小數的數值
  * 浮點數所表示的可能只是一個約略值
* 在佔用一樣大的記憶體空間的情況下，浮點數可表示的範圍可以大於我們之前提到的整數表示法。
  * 一樣占用4個位元組，整數二進為表示法的範圍大概近10為整數，但是浮點數可以將近40位數。
* 浮點數可以想成是一種科學記號表示法

* 有效數字
  * 圓周率:3.14159265
    * 取前三位有效數字:3.14
    * 取前四位有效數字:3.141或3.142(四捨五入、捨去、進位)
  * 有效數字的位數越多，表示的值越精確(精度)
  * 有效數字的位數越多，需要記憶的資訊也越多
    * 需要佔用更多記憶體空間
     
* 科學記號表示法

![image](https://github.com/XiangYun2582/tools/assets/110577553/0967226c-7280-430d-bf60-3c861e589280)

![image](https://github.com/XiangYun2582/tools/assets/110577553/950e7aa0-4477-4081-8e84-bd58ab75c272)

![image](https://github.com/XiangYun2582/tools/assets/110577553/133e0d72-88d5-410b-8ec4-e025af774761)

* C語言常見的浮點數

| 資料型別 | 名稱 |大小(位元組) |有效數字(位元)|指數大小(位元)|
| ------------- |:-------------:|:------------:|:------------:|:------------:|
| 單精度浮點數(sungle-precision floating point)   | float| 4* | 23*(約為6位)  |8*|
| 倍精度浮點數(double-precision floating point)  | double | 8* |52*(約為15位)  |11*|
|   | long double |8* |  ?*  |?*|

* 浮點數依然可能會溢位，其中一個位元通常代表正負號。
  * 浮點數溢位造成『未定義行為』
* 浮點數優點:
  * 相較佔用大小的整數格式，浮點數可以表示的數值範圍較廣，表較不容易溢位。
  * 可以自然表示小數
* 浮點數缺點:
  * 浮點數的可能只是約略值，在做精確計算或是比較時可能發生不預期的結果。
  * 浮點數格式較整數格式複雜，所以做運算時可能效率較差(經正規化2.1x10^2)
> 現代電腦內部通常會有專門為浮點數運算設計的硬體

### printf和scanf
> 將printf或scanf用在不同的資料型別(I/O)
* 電腦就像黑盒子，我們無法從外表觀測出它內部在做些甚麼。
  * 為了跟電腦互動(交換資訊)，我們需要透過輸出入裝置。
  * **輸入裝置**:鍵盤、滑鼠、麥克風、觸控螢幕、掃描器、Web Cam等。
  * **輸出裝置**:螢幕、喇叭等。
* 除了與人互動的裝置外，有有像網路或外部儲存裝置這些機器間交換資訊的裝置。

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `printf的使用`
  * printf 是做標準輸出的一個內建函式
    * 通常「標準輸出」的意思就是會輸出的文字印在螢幕上
  * printf 使用時要給予想要輸出的字串
    * 但是當我們想輸出的不是固定的字串怎麼辦?
  * printf 輸出字串可以用類似字元跳脫的方式，放置一些「格式符」來輸出特定格式的資料:(用%方式)

![image](https://github.com/XiangYun2582/tools/assets/110577553/c4b534cf-2967-4aa8-b92b-2806004a252e)

* 用printf輸出整數時常見的格式符
  * 在格式字串中，以`%`作為跳脫記號後面可以加上下中的格式代表要輸出的格式:

| 格式符 | 輸出格式 |以輸出十進位的123為例|
| ------------- |:-------------:|:------------:|
|d或i|十進位**有**號整數|123|
|u|十進位無號整數|123|
|o|八進位無號整數|173|
|x|十六進位無號整數(小寫)|7b|
|X|十六進位無號整數(大寫)|7B|

* 例子:  
⭕ a有號整數➡️無號整數去輸出`仍然不要這樣做，無號整數就該對應無號整數，反之*`  
❌ b無號整數➡️有號整數

![image](https://github.com/XiangYun2582/tools/assets/110577553/3ce915e3-08ec-40ba-b797-97032c099d2f)

* 在格式字串中，以`%`作為跳脫記號後面可以加上下中的格式代表要輸出的格式:

| 格式符 | 輸出格式 |範例|
| ------------- |:-------------:|:------------:|
|f|十進位浮點數|123.45|
|e|科學記號表示法(**小寫**) | 1.2345e+02|
|E|科學記號表示法(**大寫**) |173E+02|


* 例子:
* 用double比較好，float會有誤差

![image](https://github.com/XiangYun2582/tools/assets/110577553/3afd9650-5ab8-42b4-9fdd-7559c19fd980)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `scanf 的使用`
  * scanf是做標準輸入的一個內建函式
    * 通常「標準輸入」的意思就是會進從鍵盤輸入的文字
  * scanf使用時給予想讀入的資料格式與變數位址:`scanf(要讀入的資料格式, 變數位址);`
    * 要讀入的資料格式是使用字串的方式表示。例如:`scanf("%d", &a);`
    * scanf雖然看起跟printf很像,但是其實完全做不一樣的事情,要小心不要搞混!

* scanf的格式字串
  * scanf輸入的資料格式一樣用類字元跳脫的方法,放置一些「格式符」來指定要輸入的資料格式:
```c
int a;
scanf("%d" , &a);
```
  * 當執行到scanf時,程式會試圖從鍵盤讀取一個十進位格式的資料。所以通常程式會停止並等待使用者從鍵盤輸入資料並按Enter鍵後才進行下一步
  * 接著程式會試著將使者輸入的資料用十進位整數的格式去解釋,最後將解釋出來的值存放到變數a裡面。

* 在格式字串中，以`%`作為跳脫記號後面可以加上下中的格式代表要輸出的格式:

| 格式符 | 輸出格式 |範例|
| ------------- |:-------------:|:------------:|
|i|任何格式的整數|123 |
|d|十進位有號整數| 123 |
|u|十進位無號整數 |123|
|u|十進位浮點數 |123.45|

### 不同資料型別間的轉換與字面常數
* 有誤，輸出小數。但只有整數

```c
#include <stdio.h>
int main()
{
    int num1,num2,num3;
    printf("Please enter the first integer: ");
    scanf("%d",&num1);
    printf("Please enter the second integer: ");
    scanf("%d",&num2);
    printf("Please enter the third integer: ");
    scanf("%d",&num3);
    int average = (num1 + num2 + num3) / 3;
    printf("Average: %d\n",average);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/976991f6-41fa-401f-8caa-33d10e42fce6)

* 修正

```c
#include <stdio.h>
int main()
{
    int num1,num2,num3;
    printf("Please enter the first integer: ");
    scanf("%d",&num1);
    printf("Please enter the second integer: ");
    scanf("%d",&num2);
    printf("Please enter the third integer: ");
    scanf("%d",&num3);
    double average = (num1 + num2 + num3) / 3.;//改int和3
    printf("Average: %f\n",average);//%d變成%f
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/2ea9d18b-19c9-4b5d-aa97-e23074e67d99)

* 當我們做算術運算時，算出來的結果本身也必須要被儲存，也具有型別

![image](https://github.com/XiangYun2582/tools/assets/110577553/3e01013e-0058-4ade-bcc2-0b5653244ce9)

* 整數或浮點數做算術運算的結果
  * 當兩個同樣整數或浮點數型別的值做算術運算時，其結果也是同樣的型別
    * (int) + (int)       ➡️ (int)
    * (float) + (float)   ➡️ (float)
    * (double) + (double) ➡️ (double)

![image](https://github.com/XiangYun2582/tools/assets/110577553/86b02fe6-1cca-4cc0-853b-cb9e50601750)

> 有趣的問題字面上的定義

* 字面常數(literal constant)
  * 在程式碼內可以使用字面常數來表示已知值的資料,而字面常數一樣具有型別:

| 常見字面常數 | 型別 |
| ------------- |:-------------:|
|123|int,long int|
|123.45|double|
|123.45f|float |

![image](https://github.com/XiangYun2582/tools/assets/110577553/f7c28df9-87a0-4feb-b38d-ef9d92ebe341)

* 隱性轉型
`當整數轉型或浮點數時,如果在可表示的範圍裏面,會轉型成最接近的浮點數值。`
![image](https://github.com/XiangYun2582/tools/assets/110577553/498d5c85-0170-48b2-a1ee-b1057c6b6079)

![image](https://github.com/XiangYun2582/tools/assets/110577553/fe930bbb-f3c1-410f-b5d2-cfbb028460bc)

* 不一樣型別的值做算術運算的結果`(編譯器自動幫你做)`
  * 當兩個不一樣整數或浮點數型別的值做算術運算時,如果可以算,會「隱性轉型」成範圍較大的型別並算出該型別的值:
    * (int) + (float)    ➡️ (float) + (float)   ➡️ (float)
    * (double) + (float) ➡️ (double) + (double) ➡️ (double)
    * (int) + (double)   ➡️ (double) + (double) ➡️ (double)
* 隱性轉型與顯性轉型
  * 隱性轉型是當運算有需要時自動發生的:

  ```c
  double average = (num1 t num2 + num3) / 3.;
  ```
  * 顯性轉型是當我們有需要時直接強加的:

  ```c
  double average = (num1 + num2 + num3) / (double) 3;
  ```

**不管是哪種類型,都會產生一個暫時的替代品。**

### 字元型別簡介
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `儲存字元`
* 怎麼在電腦裡存文字資訊
* 字長怎模樣?
  * 字型
  * 當我們需要輸出文字(與人互動)時才需要用到。
* 是哪個字?
  * 給每種字元一個獨一無二的編號
    * 編碼(encoding)  

*每個字母給個編號*  

![image](https://github.com/XiangYun2582/tools/assets/110577553/6cd0dcb4-23b7-4daf-9765-c41a07c952df)  

* 字元型別是種「整數」型別:將儲存字元資訊的問題變成儲存整數的問題

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `字元編碼`

* 一般英文鍵盤可以輸入的字元:
  * 英文字母(分大小寫):52種
  * 數字(0-9):10種
  * 常用符號:20〜30種
  * 總共不到256種
* 我們只需要使用一個位元組(8bit)就可以表示。

* 使用哪種編碼是「實作定義」
  * 一般常用的編碼是 `ASCII`
    * 美國資訊交换準代碼(American Standard Code Interchange)
* 不管使用哪種編碼都必須要包含大小寫英文字母、數字及一些常見符號。

![image](https://github.com/XiangYun2582/tools/assets/110577553/b6acf945-3b7c-4440-b82a-07fa7503a9d3)

> 顏色淡了，其實打不出來，從32號開始，才是我們熟悉的。

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `使用char字元型別`

* C語言主要有兩種字元型別:
  * char
  * wchar_t
* 一般我們使用的是char 型別,而wchar_t型别則是使用在「寬字元」。
  * char型別估用的記憶體大小為1個元組(8bit)。(256種)
  * 中文字有幾種可能?(超過6萬，特殊的字 ex:gb簡體、big5繁體都可能有亂碼，不夠用)
    * 使用「多個char」或者「wchar_t」表示

* char型別的特色
  * 常見的是使用ASCII編碼
  * char型別占用1個位元組
  * char型別是一種「整數」型別
* char的字面常數
  * 用一組單引號括住: `'A'` `'a'` `0` `'\n'`
  * **用雙引號(")括住是「字串」**
* printf與scanf的字元格式符
  * 使用 %c

```c
#include <stdio.h>

int main(){
    //宣告定義一個叫做 ch的字元變數,並初始化為 A
    char ch = 'A';
    printf("%c\n",ch);
    return 0;
}
```
![image](https://github.com/XiangYun2582/tools/assets/110577553/84c229c7-8e2f-450b-bf0c-1ac7ef9b630b)

* 範例字元可以做計算嗎?
  * 想想下列這些運算的結果是甚麼?'A'(65) + 1 ➡️ 'B'(66)
  * 變成跟編號去做運算
    * 'A' + 1 ➡️ 'B'
    * 'a' + 1 ➡️ 'b'
    * 'A' - 1 ➡️ '@'
    * 'A' + '1' ➡️ 'r'

```c
int main(){
    //宣告定義一個叫做 ch的字元變數,並初始化為 A
    char ch = 'a' + 1;
    printf("%c\n",ch);
    return 0;
}
```
![image](https://github.com/XiangYun2582/tools/assets/110577553/f1d79beb-505e-4c12-a0cd-a65b5595ae7d)

![image](https://github.com/XiangYun2582/tools/assets/110577553/9091a48b-051b-409f-ad45-a07daa5e2d52)

![image](https://github.com/XiangYun2582/tools/assets/110577553/9bd1f564-b65d-4b71-b35b-598e74c0bbf2)

### 字元大小寫轉換練習

* 試寫一程式,讓使用者輸入一個大寫英文字母後,將其轉換成對應的小寫英文字母後印出。
  * 例如:
    * 如果使用者輸入A,則程式輸出a
    * 如果使用者輸入B,則程式要輸b
    * 如果使用者輸入Z,則程式要輸出z

```c
#include <stdio.h>

int main(){
    char input,output;
    scanf("%c",&input);
    output = input + 32;
    printf("%c\n",output);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/92f32222-8490-4ce6-af34-5e1c25c46d5a)

```c
#include <stdio.h>

int main(){
    char input,output;
    scanf("%c",&input);
    output = input + ('a'-'A');
    printf("%c\n",output);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/b3873a66-92bf-4e60-9f51-113e1bc026f2)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `怎麼選擇要使用的型別`

**Summary**

| 用途 | 選擇型別 |注意事項|printf格式符|scanf格式符|
| ------------- |:-------------:|:-------------:|:-------------:|:-------------:|
|整數(一般情況)|int|不要算到超過九位數|%d|%ld|
|浮點數(小數或者位數過多)|double|可能跟實數值有誤差|%f|%f|
|字元(可讀文字)|char ||%c|%c|


## 運算與表達式

| 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- |:-------------|:-------------|
| 資料的儲存與處理    | 運算元、運算子與表示式 | [資料的儲存與處理](#資料的儲存與處理)    |
| 整數與浮點數的算術運算    | 算術運算 | [整數型別簡介](#整數與浮點數的算術運算)     |
| 賦值運算    | 賦值運算 | [賦值運算](#賦值運算)     |
| 是非對錯    | 流程控制 | [是非對錯](#是非對錯)     |
| 等號與關係運算    | 布林值 | [等號與關係運算](#等號與關係運算)     |
| 邏輯運算    |兩個以上運算子連起來 | [邏輯運算](#邏輯運算)     |
| 運算子的優先順序|運算子的優先順序|[優先順序](#運算子的優先順序)|
### 資料的儲存與處理

![image](https://github.com/XiangYun2582/tools/assets/110577553/baeebaa3-fdc5-47f9-9c71-28aff48ec0aa)

* 記憶存在電腦裡面，在做運算處理。
* 之前我們介紹了要怎麼在電腦裡「儲存」(記憶)不同別的資料。
* 現在我們將討論要如何在電腦裡「處理」(運算)不同別的資料。

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `運算元、運算子與表示式`

![image](https://github.com/XiangYun2582/tools/assets/110577553/5fb99606-dbe8-429c-99c4-8061c35de58b)

* 運算子:`+`、`*`、`-`...等。
* 運算元:數字。
* 表示式:運算子 + 運算元
> 一次執行一個運算、運算子間有優先順序。先乘除後加減(一樣規則)。

![image](https://github.com/XiangYun2582/tools/assets/110577553/eb9f1c92-a6c6-4f34-8119-db2904a381e8)

![image](https://github.com/XiangYun2582/tools/assets/110577553/19bd6520-81f8-464b-a795-95da39552316)

> 型別:int  
> 暫時物件:也就是我們的計算過程。  
> 表示式裡面也有可能會有變數。  

### 整數與浮點數的算術運算

| 運算子  | 運算內容 |整數|浮點數|範例|運算子的優先順序|
| ------------- |:-------------:|:-------------:|:-------------:|:-------------:|:-------------:|
|+|將兩數相加|可|可|a + b|較低｜由左至右|
|-|將兩數相減|可|可|a - b|較低｜由左至右|
|*|將兩數相乘|可|可|a * b|較高｜由左至右|
|/|將兩數相除|可(**整數除法**5/2=2)|可(**浮點數除法**5./2.=2.5)|a / b|較高｜由左至右|
|%|將兩數相除求餘|可|**不可**|a % b|較高｜由左至右|

* % 用於求餘，來驗證偶數還是奇數?
> 乘跟除的等級相同

### 賦值運算
* `=`是賦值運算子,賦值運算會做兩件事情:
  * 賦值運算子會將右方的值複製給左方的變數
    * 左方要放一個要改變的變數
    * 左方變數值的改變是一種副作用(side effect)

  ```c
  int a;
  a=3;
  //a永遠就是3，副作用。
  ```
  * 賦值運算的運算結果是左方變數最後的型別跟值
    * 賦值運算子的優先順序比大部分運算子都低。
    * 賦值運算子的運算順序是「由右至左」。
  ```c
  int a,c;
  a=c=3;
  //c=3會先做，才是a。c等於3再算出三(運算子)。
  ```
  
  ```c
  int a,c;
  double b,d;
  a=b=c=d=3 + 7 / 2.;
  //先做隱性轉型3.5，隱性轉型6.5。
  //d=6.5,隱性轉型c=6
  //隱性轉型b=6.,a=6
  ```
  
### 是非對錯

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `流程控制`
* 有條件的執行程式碼
  * 條件成立的時候執行某段程式碼
  * 條件不成立的時候不要執行某段程式碼
* 甚麼是條件?
  * 如果『今天天氣很好』就『出門玩』
  * 在C語言裡面的條件是用「表示式」來表示
  * 表示式算出來的值是「真」的時候表示條件成立，是「假」的時候表示條件不成立

* 「是非」、「真假」與「對錯」都是種二分型的資料
  * 共有兩種可能
  * 只需要使用1個位元就可以表示:
    * 1表示「真」(true)
    * 0表示「假」(false)
* 在C89準裡沒有明確定義一種資料型別來儲存這類資訊
  * 實務上有些人會用「逐位元運算」來模擬這類資訊
  * 在C99以後,新增了`_Bool`型別來表示,但實務上還是比較少遇到。

* 「非零」的值為「真」,「零」的值為「假」
  *  1 為「真」
  *  0 為「假」
  * -1 為「真」
  *  2 為「真」
  *  0.001為「真」
  *  'A'(65) 為「真」
  *  '\0'(跳脫) 為「假」
    * 空字元(null character)〔編號0號的字元〕

### 等號與關係運算
* 3 == 5 跟3 = 5 有什麼不同?右邊是語法錯誤
* 3 > 2 > 1 ➡️ 1 > 1 ➡️ 0 變成錯的

| 運算子  | 運算內容 |範例|結果|
| ------------- |:-------------:|:-------------:|:-------------:|
|`>`|大於|3 > 5|0|
|`<`|小於|3 < 5|1|
|`==`|等於|3 == 5|0|
|`!=`|不等於|3 != 5|1|
|`>=`|大於等於(不小於)|3 >= 5|0|
|`<=`|小於等於(不大於)|3 <= 5|1|

### 邏輯運算
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `邏輯運算子`
* 可以寫 3 > 2 and 2 > 1 嗎?可以，輸下面指令(不建議大家習慣表的方式)，否則就按照表行動。

```c
#include <iso646.h>
```
* 「關係運算式」優先於「&&」
* 「關係運算式」優先於「||」
* 左邊的結果已經可以決定結果，就會停止。`短路求值(short circuit evalution)`C的特色、彈性、效率

| 運算子  | 運算內容 |範例|結果|
| ------------- |:-------------:|:-------------:|:-------------:|
|`&&`|而且(都要滿足)|3 > 2 && 2 > 1|1|
|`｜｜`|或者(一個可以就好)|3 > 2 ｜｜ 2 > 1|1|
|`!`|非|!（3 > 2）|0|

* 「!」優先於「|關係運算式」，**所以要括號**。

### 運算子的優先順序

| 順序  | 運算子 |運算類型|結果順序|運算元個數|
| ------------- |:-------------:|:-------------:|:-------------:|:-------------:|
|1|`!`    |邏輯運算|◀️由右至左|一元運算子|
|2|`* / %`|算術運算|▶️由左至右|二元運算子|
|3|`+ -`  |算術運算|▶️由左至右|二元運算子|
|4|`> < >= <=`|關係運算|▶️由左至右|二元運算子|
|5|`== !=`|關係運算|▶️由左至右|二元運算子|
|6|`&&`|邏輯運算|▶️由左至右|二元運算子|
|7|`｜｜`|邏輯運算|▶️由左至右|二元運算子|
|8|`=`|賦值運算|◀️由右至左|二元運算子|

* `()`先後順序

![image](https://github.com/XiangYun2582/tools/assets/110577553/8f19955d-c28c-444c-ac6c-bcd0a702ece0)

* 而且`&&`的優先順序會大於或者`｜｜`  
> 一元運算式:一個就可以執行

![image](https://github.com/XiangYun2582/tools/assets/110577553/3a03ae57-a4b1-4d1e-aea1-a654dac572c4)
![image](https://github.com/XiangYun2582/tools/assets/110577553/a660a13e-4123-4dcd-bd3f-d255f4e1c22a)


----


* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `兩個數字`






* ![Generic badge](https://img.shields.io/badge/%E5%9C%96%E6%A1%88-XiangYun%E7%A8%8B%E5%BC%8F-purple?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZD0iTTIzLjk5OSAxMi40NjVhOS42MDEgOS42MDEgMCAwIDEtMTkuMjAzIDBoMS4wN2E4LjUzIDguNTMgMCAxIDAgOC41MzMtOC41M3YtMS4wN0E5LjYgOS42IDAgMCAxIDI0IDEyLjQ2M3ptLTkuNi0zLjJhMy4yIDMuMiAwIDEgMCAzLjIgMy4yIDMuMiAzLjIgMCAwIDAtMy4yLTMuMnptLTIgMC0uNi02LjY3Mi0yLjQ2MiAxLjkyLTEuNDYtMS40NGE0LjY3IDQuNjcgMCAwIDAtNS42Mi0uMzdsLTIuMDIgMS4zYS41NC41NCAwIDAgMC0uMTUuNzQuNTQuNTQgMCAwIDAgLjc0LjE1bDItMS4zMWEzLjY0IDMuNjQgMCAwIDEgNC4yOS4yMmwxLjM3IDEuMzgtMi4yOSAxLjgyMXoiLz48L3N2Zz4=)
* 我學習的對象:https://www.youtube.com/watch?v=iZ9W2nPKIwU&list=PLY_qIufNHc293YnIjVeEwNDuqGo8y2Emx&index=2&ab_channel=FeisStudio
* 無關的小工具[Generic badge](https://gist.github.com/rxaviers/7360908)
* 參考資料:[百科全書1](http://kaiching.org/pydoing/c.html)
* 參考資料:[百科全書2](https://www.csie.ntu.edu.tw/~b98902112/cpp_and_algo/cpp/variable_type_and_declare.html)
* 參考資料:[百科全書3](https://openhome.cc/Gossip/CGossip/)
