#include <stdio.h>
int main() {
    int num1, num2;
    char op;
    float answer;
    printf("請開始你的表演二: \n");
    scanf("%d%c%d", &num1, &op, &num2) ;
    switch (op){
        case '+':
            answer = num1 + num2;
            break;
        case '-':
            answer = num1 - num2;
            break;
        case '*':
            answer = num1 * num2;
            break;
        case '/':
            answer = (float) num1 / num2;
            break;
    }
    printf("ANS: %f\n", answer);
    return 0;
}
