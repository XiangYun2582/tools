#include <stdio.h>
int main(){
    int N;
    printf("N = ");
    scanf("%d", &N);
    int i, j;

    for (i= 1; i <=N; ++i){
        for(j=1; j <= N; ++j){
            if(j == N||i == N ||i+j == N+1){
                printf("*");
            }
            else{
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}
