#include <stdio.h>
int main(){
    int a,b,c,min;
    printf("Please enter two integers: ");
    scanf("%d%d", &a, &b);
    min = a;
    if(min>b){
        min = b;
    }
    printf("The mininum is %d.\n",min);
    return 0;
}
