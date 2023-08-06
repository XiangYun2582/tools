#include <stdio.h>
int main() {
    int number;
    int sum = 0;
    printf("Please enter the numbers (0: quit):\n");
    scanf("%d", &number);
    while (number != 0){
        sum = sum + number;
        scanf("%d", &number) ;
    }
    printf("The sum is %d. \n", sum);
    return 0;
}
