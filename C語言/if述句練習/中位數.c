#include <stdio.h>
int main() {
    int a, b, c, med;
    printf("Please enter three integers: ");
    scanf("%d%d%d", &a, &b, &c);
    med = a;
    if (a <= b && b <= c || c <= b && b <= a){
        med = b;
    }
    if (a <= c && c <= b || b <= c && c <= a) {
        med = c;
    }
    printf("The median is %d.\n", med);
    return 0;
}
