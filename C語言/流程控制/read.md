## 流程控制

| 🍊章節名稱  | 🍎內容 |🐇跳轉 |
| ------------- |:-------------|:-------------|
| 有條件的執行一次    | if述句 | [有條件的執行一次 ](#有條件的執行一次 )    |
| 滿額折扣計算練習   | 四則運算 | [滿額折扣計算練習](#滿額折扣計算練習)     |
| 三角形   | 正三角形、等腰三角形、直角三角形 | [三角形](#三角形)     |

* 無條件的執行一次(一般述句)
* **有條件的執行一次(if述句)**
* 無條件的重複執行(無窮迴圈)
* **有條件的重複執行(while述句)**
* **計次型重複執行(For述句)**
* 選擇性的執行一次(switch述句)
* 至少執行一次下有條件的重複執行(do-whie述句)
> 使用頻率:`if`>`while`>`switch`>`do-while`

### 有條件的執行一次
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `if述句`
* if (表示式){程式片段}
  * 如果「表示式」成立，就執行「程式片段」

```c
#include <stdio.h>
int main(){
    int a = 5;
    if (a > 4){
       printf("a is larger than 4.\n");
    }
    return
}

```
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `猜數字`

```c
#include <stdio.h>
int main(){
    int answer = 4;
    int guess;
    printf("Please enter your guess: ");
    scanf("%d",&guess);
    if (guess > answer){
    printf("Too larger!\n");
    }
    if (guess < answer){
    printf("Too smaller!\n");
    }
    if (guess == answer){
    printf("Correct!\n");
    }
    return 0;
}

```

### 滿額折扣計算練習
某吃到飽餐廳的套餐1人300元(無額外的費用)。今日因周年慶特價方案,每桌消費滿3000元就打八折。試寫一程式讓服務生輸入一桌的消費人數後,輸出該桌顧客應付的總額。
```c
#include <stdio.h>
int main() {
    int number,total;
    printf("Please enter the number of customers: ");
    scanf("%d", &number);
    total = 300 * number;
    if (total >= 3000) {
        total = total * 0.8;
    }
    printf("Total: %d\n", total);
    return 0;
}
```

### 三角形
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `正三角形`
* 輸入某三角形的三邊長(皆為整數),判斷這三角形是不是正三角形?
  * 正三角形(regular triangle):三邊都一樣長

![image](https://github.com/XiangYun2582/tools/assets/110577553/22b01608-c18a-495a-84f6-61b9c6d617c1)

```c
#include <stdio.h>
int main() {
    int sidel, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &sidel, &side2, &side3);
    if (sidel == side2){
        if (side2 == side3) {
        printf("Regular triangle\n");
        }
    }
    return 0;
}
```

* 等價

```c
#include <stdio.h>
int main() {
    int sidel, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &sidel, &side2, &side3);
    if (sidel == side2 && side2 == side3){
        printf("Regular triangle\n");
    }
    return 0;
}
```

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `等腰三角形`
* 輸入某三角形的三邊長(皆為整數),判斷這三角形是不是等腰三角形?
  * 等腰三角形(isosceles triangle):有兩邊一樣長

```c
#include <stdio.h>
int main() {
    int sidel, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &sidel, &side2, &side3);
    if (sidel == side2) {
    printf("Isosceles triangleln");
    }
    if (sidel == side3 && sidel != side2){
    printf("Isosceles triangle\n");
    }
    return 0 ;
}
```

* 等價
```c
#include <stdio.h>
int main() {
    int sidel, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &sidel, &side2, &side3);
    if (sidel == side3 || sidel == side2 ||side2 == side3){
    printf("Isosceles triangle\n");
    }
    return 0 ;
}
```

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `直角三角形`
* 輸入某三角形的三邊長(皆為整數),判斷這三角形是不是直角三角形?
  * 直角三角形(rectangular tringle):兩邊長的平方和等於第三邊的平方

```c
#include <stdio.h>
int main(){
    int side1, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &side1, &side2, &side3);
    if (side1 ^ 2 + side2 ^ 2 == side3 ^ 2 ||
        side3 ^ 2 + side2 ^ 2 == side1 ^ 2 ||
        side2 ^ 2 + side3 ^ 2 == side1 ^ 2){
        printf("Recrangular triangle\n");
    }
    return 0 ;
}
```

* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `所有三角形`

```c
#include <stdio.h>
int main() {
    int side1, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &side1, &side2, &side3);
/* 雖然三个長不一定大小順序輸入,但我們可以透過數值交换的方式,
將輸入後的三個邊長由小到大依序存放在sidel,side2,side3裡*/
    if (side1 == side3){
    printf("Regular triangle\n") ;
    }
    if (side1 == side2 || side1 == side3){
    printf("Isosceles triangle\n") ;
    }
    if (side1 * side1 + side2 * side2 == side3 * side3){
    printf("Rectangular triangle\n");
    }
    return 0;
}
```
