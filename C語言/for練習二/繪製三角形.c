#include <stdio.h>
int main() {
    int N;
    printf("N = ");
    scanf("%d" , &N);
    int i, j;
    printf("*\n"); //�L1�ӬP�P
    for (i= 0; i <=N-3; ++i){
        printf("*");//�L1�ӬP�P
        for(j=1; j <= i; ++j){//�Li�Ӫť�
            printf(" ");
        }
        printf("*\n"); //�L1 �ӬP�P+����
    }
    for(j=1;j<=N;++j){ //�LN�ӬP�P
        printf("*");
    }
    printf ("\n"); //����
    return 0;
}
