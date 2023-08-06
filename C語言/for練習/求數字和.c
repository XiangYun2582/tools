#include <stdio.h>
int main() {
    int N;
    printf("N = ");
    scanf("%d" , &N) ;
    int sum = 1;
    int i;
    for (i = 2; i <= N; i++){
        sum = sum + i;
    }
    printf("%d\n",sum);
    return 0;
}
