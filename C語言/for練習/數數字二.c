#include <stdio.h>
int main() {
    int N;
    printf("Please enter the number: ");
    scanf("%d", &N);
    int count;
    for (count = 1; count <= N; count++){
    printf("%d\n", count);
    }
    return 0;
}
