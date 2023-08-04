#include <stdio.h>
int main(){
    int id;
    printf("ID: ");
    scanf("%d", &id);
    switch (id){
        case 2 :
        //可以共用(break打斷功能)
        case 3 :
        case 4 :
            printf("John\n") ;
            break;
        case 13:
            printf("Mary\n") ;
            break;
        case 16:
            printf("Amy\n") ;
            break;
        default:
        printf("Not found\n") ;
    }
    return 0;
}
