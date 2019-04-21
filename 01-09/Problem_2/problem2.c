#include <stdio.h>

// gcc problem2.c -o problem2

int fibonacci(int n) {
    if (n <= 2) return n;
    return fibonacci(n-2) + fibonacci(n-1);
}

int main() {
    int sum = 0;
    for (int i = 1; fibonacci(i) < 4000000; i++) {
        if (fibonacci(i)%2 == 0) {
            sum += fibonacci(i);
        }
    }
    printf("%d\n", sum);
    return 0;
}