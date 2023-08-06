## for練習

| 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- |:-------------|:-------------|
|計次型的重複執行|計次型的重複執行|[計次型的重複執行](#計次型的重複執行)|
|印數字|奇偶數|[印數字](#印數字)|
|求數字和|加總|[求數字和](#求數字和)|

### 計次型的重複執行
* for 述句
* for(初始式;條件式;圈式){程式片段}
  * 執行「初始式」。
  * 當「條件式」 成立時,執行「程式片段」。否則就結束圈。
  * 執行「圈式」後再回到上一步。  

![image](https://github.com/XiangYun2582/tools/assets/110577553/249cb36b-e643-4091-aa06-da33c1b483ca)  

![image](https://github.com/XiangYun2582/tools/assets/110577553/f2cc1ea1-6214-4b5e-8792-e841bf613eb7)

### 印數字

```c
#include <stdio.h>
int main() {
    int N;
    printf("Please enter the number: ");
    scanf("%d", &N);
    int count;
    for (count = 1; count <= N; count++){
    printf("%d\n", count);
    }
    return 0;
}
```

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `奇數`

```c
#include <stdio.h>
int main() {
    int count;
    for (count = 1; count <= 10; count ++){
        if(count % 2 == 1){
            printf("%d\n", count);
        }
    }
    return 0;
}
```

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `偶數`

```c
#include <stdio.h>
int main() {
    int count;
    for (count = 2; count <= 10; count += 2){
    printf("%d\n", count);
    }
    return 0;
}

```



![image](https://github.com/XiangYun2582/tools/assets/110577553/7b20f647-805f-46b3-b348-5b420de833fb)

### 求數字和
```c
#include <stdio.h>
int main() {
    int N;
    printf("N = ");
    scanf("%d" , &N) ;
    int sum = 1;
    int i;
    for (i = 2; i <= N; i++){
        sum = sum + i;
    }
    printf("%d\n",sum);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/25205af2-e34a-4782-a3ef-e776c08eb223)

### 繪製特定長度的橫線

```c
#include <stdio.h>
int main() {
    int N;
    printf("N = ");
    scanf("%d",&N);
    int count;
    for (count = 1; count <= N; count++) {
        printf("*");
    }
    printf("\n");
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/d2885664-a3f3-43ad-80a3-d12cd4ead1e8)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `break`
  * 中斷目前所屬的重複執行述句

![image](https://github.com/XiangYun2582/tools/assets/110577553/98af15d0-863c-448d-8954-115e7294fc96)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `兩個數字`
  * 在重複執行述句中跳過後面的程式區塊
![image](https://github.com/XiangYun2582/tools/assets/110577553/d84a9953-27c8-49b2-a34c-35a27d1926f8)

> **不一定更輕鬆**
