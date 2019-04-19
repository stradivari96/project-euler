#include <stdio.h>


int main() {
    unsigned int sum_squares = 0;
    unsigned int sum = 0;
    for (int i=1; i <= 100; i++) {
        sum += i;
        sum_squares += i*i;
    }
    printf("%d\n", sum*sum-sum_squares);
    return 0;
}