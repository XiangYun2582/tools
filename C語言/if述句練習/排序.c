#include <stdio.h>
int main(){
    int a, b, t;
    scanf("%d%d", &a, &b);
    printf("Before: %d %d\n", a, b);
    /*�ڭ̭n�b�o�̹� a��b�i����Ӥj�p���Ƨ�*/
    if(a>b){
        t=a;
        a=b;
        b=t;
    }
    printf("After %d %d \n",a ,b);
    return 0;
}
