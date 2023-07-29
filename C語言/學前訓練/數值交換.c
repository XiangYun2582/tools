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
