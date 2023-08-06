## for練習二

| 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- |:-------------|:-------------|
|韓信點兵| |[韓信點兵](#韓信點兵)|
|韓信前三小| |[韓信前三小](#韓信前三小)|
|質數 |計次型的重複執行|[質數](#質數)|
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
