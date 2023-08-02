#include <stdio.h>
int main(){
    int answer = 4;
    int guess;
    printf("Please enter your guess: ");
    scanf("%d",&guess);
    if (guess > answer){
    printf("Too larger!\n");
    }
    if (guess < answer){
    printf("Too smaller!\n");
    }
    if (guess == answer){
    printf("Correct!\n");
    }
    return 0;
}
