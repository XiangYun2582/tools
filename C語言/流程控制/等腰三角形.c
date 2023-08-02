#include <stdio.h>
int main() {
    int sidel, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &sidel, &side2, &side3);
    if (sidel == side3 || sidel == side2 ||side2 == side3){
    printf("Isosceles triangle\n");
    }
    return 0 ;
}
