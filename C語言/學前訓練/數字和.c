#include <stdio.h>
int main()
{
    //�ŧi(�w�q)integer1�O��ơA�]�N�O�ڭ̼��x���ܼ�
    //�@�@�s�F�T�ӪŶ�
    int integer1;
    int integer2;
    int sum;
    //�L�o�Ӧr��
    printf("Please enter the first integer: ");
    //scanf��ܱq��LŪ�J��ơA%d��ܤQ�i��A&�O�����B��l
    scanf("%d",&integer1);
    printf("Please enter the second integer: ");
    scanf("%d",&integer2);
    sum = integer1 + integer2;
    printf("Sum is %d.\n",sum);
    return;
}
