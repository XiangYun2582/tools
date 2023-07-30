#include <stdio.h>

int main(){
    char input,output;
    scanf("%c",&input);
    output = input + ('a'-'A');
    printf("%c\n",output);
    return 0;
}
