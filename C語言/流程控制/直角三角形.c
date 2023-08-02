#include <stdio.h>
int main(){
    int side1, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &side1, &side2, &side3);
    if (side1 ^ 2 + side2 ^ 2 == side3 ^ 2 ||
        side3 ^ 2 + side2 ^ 2 == side1 ^ 2 ||
        side2 ^ 2 + side3 ^ 2 == side1 ^ 2){
        printf("Recrangular triangle\n");
    }
    return 0 ;
}
