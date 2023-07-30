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
