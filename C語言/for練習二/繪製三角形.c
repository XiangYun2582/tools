#include <stdio.h>
int main() {
    int N;
    printf("N = ");
    scanf("%d" , &N);
    int i, j;
    printf("*\n"); //印1個星星
    for (i= 0; i <=N-3; ++i){
        printf("*");//印1個星星
        for(j=1; j <= i; ++j){//印i個空白
            printf(" ");
        }
        printf("*\n"); //印1 個星星+換行
    }
    for(j=1;j<=N;++j){ //印N個星星
        printf("*");
    }
    printf ("\n"); //換行
    return 0;
}
