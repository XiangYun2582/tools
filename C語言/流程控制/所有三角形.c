#include <stdio.h>
int main() {
    int side1, side2, side3;
    printf("Please enter the lengths: ");
    scanf("%d%d%d", &side1, &side2, &side3);
/* 雖然三个長不一定大小順序輸入,但我們可以透過數值交换的方式,
將輸入後的三個邊長由小到大依序存放在sidel,side2,side3裡*/
    if (side1 == side3){
    printf("Regular triangle\n") ;
    }
    if (side1 == side2 || side1 == side3){
    printf("Isosceles triangle\n") ;
    }
    if (side1 * side1 + side2 * side2 == side3 * side3){
    printf("Rectangular triangle\n");
    }
    return 0;
}
