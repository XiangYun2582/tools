#include <stdio.h>
int main(){
    int integer,sum;
    //�L�o�Ӧr��
    printf("Please enter the first integer: ");
    //scanf��ܱq��LŪ�J��ơA%d��ܤQ�i��A&�O�����B��l
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

