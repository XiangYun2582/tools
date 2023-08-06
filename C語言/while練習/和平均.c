#include <stdio.h>
int main() {
    int number;
    int sum = 0;
    int count = 0;
    float average;
    printf("Please enter the numbers (0: quit):\n");
    scanf("%d",&number);
    while (number != 0){
    sum = sum + number;
    count = count + 1;
    scanf("%d", &number);
    }
    average = (float) sum / count;
    printf("The average is %f\n", average);
    return 0;
}
