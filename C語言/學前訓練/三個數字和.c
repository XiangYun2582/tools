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

