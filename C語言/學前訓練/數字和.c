#include <stdio.h>
int main()
{
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
