#include <stdio.h>

// gcc problem1.c -o problem1
int main() {
    int sum = 0;
    for (int i = 3; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    printf("%d\n", sum);
    return 0;
}