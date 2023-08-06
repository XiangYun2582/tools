#include <stdio.h>
int main() {
    int count;
    for (count = 1; count <= 10; count ++){
        if(count % 2 == 1){
            printf("%d\n", count);
        }
    }
    return 0;
}
