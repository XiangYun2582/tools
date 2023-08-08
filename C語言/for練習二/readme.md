## for練習二

| 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- |:-------------|:-------------|
|韓信點兵| |[韓信點兵](#韓信點兵)|
|韓信前三小| |[韓信前三小](#韓信前三小)|
|質數 |計次型的重複執行|[質數](#質數)|
|九九乘法表|練習輸出for迴圈|[九九乘法表](#九九乘法表)|
|長方形|實心、空心|[長方形](#長方形)|
|三角形|實心、座標法、空心|[三角形](#三角形)|
|找簡易的方程式整數解|二元一次方程式|[找簡易的方程式整數解](#找簡易的方程式整數解)|

* 找出所有的正因數
  * 讓使用者輸入正整數N,找N的所有正因。(整除:餘數為零)
  * N的因數可以整除N的整數N的正因數:可以整除N的正整數
  * 例如:
    * 8的正因數:1,2,4,8
    * 9的正因數:1,3,9
    * 10的正因數:1,2,5,10
    * 11的正因數:1,11(質數)

* 讓使用者輸入正整數N，找出N的所有正因數(由小到大印出)。

```c
#include <stdio.h>
int main() {
    int N;
    printf("N = ");
    scanf("%d" , &N);
    int number;
    for (number = 1; number <= N; number++) {
        if (N % number == 0){
            printf("%d ", number);
        }
    }
    printf("\n");
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/3d77afd6-993d-4ae1-8463-9489d1e794ab)

### 韓信點兵

```c
#include <stdio.h>
    int number;
    for (number = 1;!(number%3 == 2 && number%5 == 3 && number%7 == 2);
    ++number) ;
    printf("%d\n", number);
    return 0;
}
```
![image](https://github.com/XiangYun2582/tools/assets/110577553/f317d270-cf16-4a5e-b1ae-fe0305da8579)

讓使用者輸入搜尋上限,找出上限內所有韓信點兵問題的答案

```c
#include <stdio.h>
int main() {
    int min,max;
    printf("Min = ");
    scanf("%d",&min);
    printf("Max = ");
    scanf("%d",&max);
    int number;
    for (number=max;number>=min;--number) {
        if(number%3 == 2 && number%5 == 3 && number%7 == 2){
            printf("%d\n", number);
        }
    }
    printf("\n");
    return 0;
}
```
![image](https://github.com/XiangYun2582/tools/assets/110577553/e7372a14-433e-4325-8a3e-0ff613f1efa8)

### 韓信前三小

```
#include <stdio.h>
int main() {
    int count = 0;
    int number;
    for (number = 1; number <= 1000; ++number) {
        if (number%3 == 2 && number%5 == 3 && number%7 == 2){
        ++count;
            if (count <= 3) {
                printf("%d ", number) ;
            }
        }
    }
    printf("\n") ;
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/4ecb3488-8cfb-4ec4-bc42-3a0de5c85a64)

### 質數
* N % number != 0會跳脫迴圈結束

```c
#include <stdio.h>
int main() {
    int N;
    printf("N = ");
    scanf("%d" , &N);
    int number;
    for (number = 2; number < N && N % number != 0; ++number);{
        if (number == N){
            printf("Yes\n") ;
        }else{
            printf("No\n");
        }
    }
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/73b38b9d-ac2e-4427-b454-8a80beee9de0)

### 九九乘法表

```c
#include <stdio.h>
int main(){
    int c;
    for (c =1; c<= 72; ++c){
        int i = (c-1)/9+2;
        int j = (c-1)%9+1;
        printf("%d x %d = %d\n ",i,j,i*j);
    }
    return 0;
}
```


### 長方形
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `實心`
```c
#include <stdio.h>
int main(){
    int N;
    printf("N = ");
    scanf("%d", &N);

    int i,j;
    for (i = 1;i <= N ;++i){
        for (j = 1;j <=N;++j){
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/e0bc4790-7859-403e-9be0-fcb4e685fd38)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `空心`

```c
#include <stdio.h>
int main(){
    int N;
    printf("N = ");
    scanf("%d" , &N);
    int i, j;
    for (i = 1; i <=N; ++i){
        for (j = 1; j <= N; ++j){
            if(i == 1 || i == N || j== 1 || j==N){
                printf("*");
            } else{
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}
```
![image](https://github.com/XiangYun2582/tools/assets/110577553/6717f2ba-778c-4e9b-b00f-540555ab2f79)

### 三角形
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `三角形`

```c
#include <stdio.h>
int main() {
    int N;
    printf("N = ");
    scanf("%d" , &N);
    int i, j;
    printf("*\n"); //印1個星星
    for (i= 0; i <=N-3; ++i){
        printf("*");//印1個星星
        for(j=1; j <= i; ++j){//印i個空白
            printf(" ");
        }
        printf("*\n"); //印1 個星星+換行
    }
    for(j=1;j<=N;++j){ //印N個星星
        printf("*");
    }
    printf ("D\n"); //換行
    return 0;
}

```
![image](https://github.com/XiangYun2582/tools/assets/110577553/5b8f6f6f-9846-4e10-8540-223dc04d35c9)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `座標法`

```c
#include <stdio.h>
int main() {
    int i, j;
    for (i = 1; i <= 5; ++i){
        for (j = 1; j <= 5; ++j) {
            printf("(%d,%d)", i, j);
        }
        printf("\n");
    }
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/857b4050-4296-4194-9801-2150cf4111c4)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `空心三角形`

```c
#include <stdio.h>
int main(){
    int N;
    printf("N = ");
    scanf("%d", &N);
    int i, j;

    for (i= 1; i <=N; ++i){
        for(j=1; j <= N; ++j){
            if(j == N||i == N ||i+j == N+1){
                printf("*");
            }
            else{
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/53f9177d-409d-47c0-86bf-8ebad752c6ef)

### 找簡易的方程式整數解
* 已知兩個正整數相加為30,相乘為221。求此兩個正整數為?
```c
#include <stdio.h>
int main() {
    int i,j;
    for (i = 1; i <= 30; ++i){
        int j= 30-i;
        if (i*j ==221){
            printf("%d, %d\n",i,j);
        }
    }
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/cf53d523-b4e6-4a9c-b381-34a0691bd7f2)
