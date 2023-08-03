#include <stdio.h>
int main(){
    int a,b,c,max;
    printf("Please enter three integers: ");
    scanf("%d%d%d", &a, &b, &c);
    max = a;
    if(max<b){
        max = b;
    }
    if(max<c){
        max = c;
    }
    printf("The maxinum is %d.\n",max);
    return 0;
}
