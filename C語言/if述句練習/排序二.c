#include <stdio.h>
int main(){
    int a, b, c, t;
    scanf("%d%d%d", &a, &b, &c);
    printf("Before: %d %d %d.\n", a, b, c);
    if (b < a){
        t =b; b = a; a = t;
    }
    if (c < a){
        t =b; b = a; a = t;
    }
    if (b < a){
        t = c; c = a; a = t;
    }
    if (c < b){
        t = c; c = b; b = t;
    }
    printf("After: %d %d %d\n", a, b, c);
    return 0;
}
