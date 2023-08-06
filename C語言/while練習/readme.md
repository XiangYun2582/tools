## while練習

| 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- |:-------------|:-------------|
| 有條件地重複執行   | while | [有條件地重複執行](#有條件地重複執行 )    |
|猜數字練習|猜數字練習while|[猜數字練習](#猜數字練習)|
|求不定個數正整數和||[求不定個數正整數和](#求不定個數正整數和)|
|求平均和|求平均和|[求平均和](#求平均和)|
|數數字|印出|[數數字](#數數字)|
|do-while|do-while|[do-while](#do-while)|
|複合運算|賦值|[複合運算](#複合運算)|
|消費金額計算|遞減遞增|[消費金額計算](#消費金額計算)

### 有條件地重複執行

![image](https://github.com/XiangYun2582/tools/assets/110577553/667397cc-fa4f-4d1b-b204-32b9e3d7a010)

```c
#include <stdio.h>
int main() {
    int count = 0;
    while (count < 3) {
        printf("%d\n",count) ;
        count = count + 1;
    }
return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/53f231d6-803b-4d60-8112-5c5c627a7022)

### 猜數字練習
```c
#include <stdio.h>
int main() {
    int answer = 4 ;
    int guess;
    printf("Please enter your guess: ");
    scanf("%d",&guess);
    while (guess != answer){
        if (guess > answer){
            printf("Too large! \n") ;
        } else{
            printf("Too small! \n");
        }
        printf("Please enter your guess: ");
        scanf("%d", &guess);
    }
    printf("Correct! \n") ;
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/bc1771bf-d307-439c-a5af-e7799454fd2c)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `加次數`

```c
#include <stdio.h>
int main() {
    int answer = 4 ;
    int guess;
    int count = 0;
    printf("Please enter your guess: ");
    scanf("%d",&guess);
    count = count + 1;
    while (guess != answer){
        if (guess > answer){
            printf("Too large! \n") ;
        } else{
            printf("Too small! \n");
        }
        printf("Please enter your guess: ");
        scanf("%d", &guess);
        count = count + 1;
    }
    printf("Correct! (%d)\n",count) ;
    return 0;
}

```
![image](https://github.com/XiangYun2582/tools/assets/110577553/95678ea1-3c72-4f92-9da7-9a62d1ed2f2e)

### 求不定個數正整數和
* 使用者連續輸入正整數到輸入0時為止，計算出所有輸入的正整數和。

```c
#include <stdio.h>
int main() {
    int number;
    int sum = 0;
    printf("Please enter the numbers (0: quit):\n");
    scanf("%d", &number);
    while (number != 0){
        sum = sum + number;
        scanf("%d", &number) ;
    }
    printf("The sum is %d. \n", sum);
    return 0;
}

```
![image](https://github.com/XiangYun2582/tools/assets/110577553/0bc2c6f7-ced5-4222-bd20-d589e1b41912)

### 求平均和
```c
#include <stdio.h>
int main() {
    int number;
    int sum = 0;
    int count = 0;
    float average;
    printf("Please enter the numbers (0: quit):\n");
    scanf("%d",&number);
    while (number != 0){
    sum = sum + number;
    count = count + 1;
    scanf("%d", &number);
    }
    average = (float) sum / count;
    printf("The average is %f\n", average);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/d12ff391-1751-4e79-bfc8-d58e5aab3e35)

### 數數字
* 注意count printf while 之間先後

```c
#include <stdio.h>
int main() {
    int count = 1;
    while (count <= 100){
        printf("%d\n", count) ;
        count = count + 1;
    }
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/e281b605-f48e-49d3-a452-66853a6355f8)
### do-while

* do{程式片段}while(表示式);
  * 當「表示式」 成立時，就執行「程式片段」。

![image](https://github.com/XiangYun2582/tools/assets/110577553/580022c1-d5a8-4906-8639-400aed9a540e)

```c
#include <stdio.h>
int main() {
    int answer = 4;
    int guess;
    do{
        printf("Please enter your guess: ");
        scanf("%d", &guess) ;
        if (guess > answer){
            printf("Too large! !\n") ;
        } else if (guess < answer){
            printf("Too small! \n") ;
        } else{
            printf("Correct! \n");
        }
    } while (guess != answer);
    return 0 ;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/942911ee-8f7e-467c-b377-2339c7ef8162)

### 複合運算
* 賦值

|運算子|意義|範例|相當於|
| ---- |:----:|:----:|:----:|
|`+=`|加等於|a += 2|a = a + 2|
|`-=`|減等於|a -= 2|a = a - 2|
|`*=`|乘等於|a *= 2|a = a * 2|
|`/=`|除等於|a /= 2|a = a / 2|
|`%=`|求等於|a %= 2|a = a % 2|

* 遞減遞增

|運算子|意義|範例|相當於|運算結果|
| ---- |:----:|:----:|:----:|:----:|
|`++`|遞增|a++|a = a + 1|a 原本的值|
|`++`|遞增|++a|a = a + 1|a 加1後的值|
|`--`|遞減|a--|a = a - 1|a 原本的值|
|`--`|遞減|--a|a = a - 1|a 減1後的值|

![image](https://github.com/XiangYun2582/tools/assets/110577553/41a15781-c590-4453-8ba3-d4bb2fe0b9ef)

### 消費金額計算
* 試寫一程式讓使用者分別輸入每個商品的編號。輸入為時依照右方的售價表進行結算後，顯示賣出的總金額

![image](https://github.com/XiangYun2582/tools/assets/110577553/ee20c260-c421-4527-b8ee-4eb65ebfe15f)

![image](https://github.com/XiangYun2582/tools/assets/110577553/dd55c7e9-6616-40cb-83e0-a970c2a1cde8)
