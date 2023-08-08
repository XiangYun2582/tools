#include <stdio.h>
int main(){
    int N;
    printf("N = ");
    scanf("%d", &N);

    int i,j;
    for (i = 1;i <= N ;++i){
        for (j = 1;j <=N;++j){
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
