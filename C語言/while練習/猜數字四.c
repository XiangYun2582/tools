#include <stdio.h>
int main() {
    int answer = 4;
    int guess;
    do{
        printf("Please enter your guess: ");
        scanf("%d", &guess) ;
        if (guess > answer){
            printf("Too large! !\n") ;
        } else if (guess < answer){
            printf("Too small! \n") ;
        } else{
            printf("Correct! \n");
        }
    } while (guess != answer);
    return 0 ;
}
