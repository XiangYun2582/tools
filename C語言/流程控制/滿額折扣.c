#include <stdio.h>
int main() {
    int number,total;
    printf("Please enter the number of customers: ");
    scanf("%d", &number);
    total = 300 * number;
    if (total >= 3000) {
        total = total * 0.8;
    }
    printf("Total: %d\n", total);
    return 0;
}
