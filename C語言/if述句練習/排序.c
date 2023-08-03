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
