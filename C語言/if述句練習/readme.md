## if述句練習

| 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- |:-------------|:-------------|
| 求最大值    | 兩個、三個 | [求最大值](#求最大值 )    |
| 求最小值    | 兩個 | [求最小值](#求最小值 )    |
| 中位數    | 中位數 | [中位數](#中位數)    |
|對多個變數排序|三個數字練習、三角形|[對多個變數排序](#對多個變數排序)    |

### 求最大值
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `兩個數字`
* 輸入兩個整數值,輸出兩個中的最大值

```c
#include <stdio.h>
int main(){
    int a,b,max;
    printf("Please enter the first integer: ");
    scanf("%d", &a);
    printf("Please enter the second integer: ");
    scanf("%d", &b);
    max = a;
    if(max<b){
        max = b;
    }
    printf("The maxinum is %d.\n",max);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/1b81a43e-2750-4381-a371-54eb43d8a63d)



* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `三個數字`

```c
#include <stdio.h>
int main(){
    int a,b,c,max;
    printf("Please enter three integers: ");
    scanf("%d%d%d", &a, &b, &c);
    max = a;
    if(max<b){
        max = b;
    }
    if(max<c){
        max = c;
    }
    printf("The maxinum is %d.\n",max);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/5f8a0a6b-2a7f-4dec-93d8-76d25679c0a8)

### 求最小值

```c
#include <stdio.h>
int main(){
    int a,b,c,min;
    printf("Please enter two integers: ");
    scanf("%d%d", &a, &b);
    min = a;
    if(min>b){
        min = b;
    }
    printf("The mininum is %d.\n",min);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/e2a1f2da-7e49-436e-ae6f-a028732254e7)

### 中位數
* 試輸入三個整數值,並輸出他們的中位數?

```c
#include <stdio.h>
int main() {
    int a, b, c, med;
    printf("Please enter three integers: ");
    scanf("%d%d%d", &a, &b, &c);
    med = a;
    if (a <= b && b <= c || c <= b && b <= a){
        med = b;
    }
    if (a <= c && c <= b || b <= c && c <= a) {
        med = c;
    }
    printf("The median is %d.\n", med);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/3fa4623a-cb00-432d-835e-9cadc2092e18)

* 求三個整數的中位數
  * 求個整數中第二大的
  * 求三個整數中第二小的
* 到底有多難?
  * 一個問題到底有多難?
  * 哪個問題是比較難的?
  * "複雜度"(complexity)的概念
* 為什麼最大最小值“好像”有比較簡單的解法?
* 求三個整數的最大值“相當於”先求兩個整數的最大值後再拿來跟第三個整數比大

### 對多個變數排序
* 處理後產生具有某種順序的資料序列
  * 找最大值
  * 找最小值
  * 找中位數
  * 找K大的值
* 對兩個變數依照大小排序
  * 使用數值交換的做法
* 對三個變數依照大小排序
  * 使用數值交換的做法
  * 分析各種數值交換的想法
    * 不同的想法可能產生不同的做法,但目的都是得到同樣的結果。

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `兩個數字練習`
* 由小排到大

```c
#include <stdio.h>
int main(){
    int a, b, t;
    scanf("%d%d", &a, &b);
    printf("Before: %d %d\n", a, b);
    /*我們要在這裡對 a跟b進行按照大小的排序*/
    if(a>b){
        t=a;
        a=b;
        b=t;
    }
    printf("After %d %d \n",a ,b);
    return 0;
}

```
![image](https://github.com/XiangYun2582/tools/assets/110577553/406926ed-2fac-475b-b6d7-c25446240cac)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `三個數字練習`

```c
#include <stdio.h>
int main(){
    int a, b, c, t;
    scanf("%d%d%d", &a, &b, &c);
    printf("Before: %d %d %d.\n", a, b, c);
    if (b < a){
        t =b; b = a; a = t;
    }
    if (c < a){
        t =b; b = a; a = t;
    }
    if (b < a){
        t = c; c = a; a = t;
    }
    if (c < b){
        t = c; c = b; b = t;
    }
    printf("After: %d %d %d\n", a, b, c);
    return 0;
}
```

![image](https://github.com/XiangYun2582/tools/assets/110577553/0aee1f36-a871-4abe-bd56-8125fe0e88b2)

* 一次只解決一小部份的問題,慢慢累積後就可以解決全部的問題。
  * 將a,b.c中最小的值換到數a
    * 將a.b中較小的值到數a
    * 將a,c中較小的數值換到變數a
  * 將b.c中較小的數值換到變數b

![image](https://github.com/XiangYun2582/tools/assets/110577553/d23250dc-a77f-4e0d-8cc3-d3b29eaf1cf1)

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `三角形練習`
```c
#include <stdio.h>
int main(){
    int side1, side2, side3, t;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &side1, &side2, &side3);
    /*在這裡將sidel,side2,side3由小到大排*/
    if (side1 > side2){t = side1; side1 = side2; side2 = t;}
    if (side1 > side3){t = side1; side1 = side3; side3 = t;}
    if (side2 > side3){t = side2; side2 = side3; side3 = t;}
    if (side1 == side3){
        printf("Regular triangle\n");
    }
    if(side1 == side2 || side2 == side3){
        printf("Isosceles triangle\n");
    }
    if (side1 * side1 + side2 * side2 == side3 * side3){
        printf("Rectangular triangle\n") ;
    }
    return 0;
}

```
