#include <stdio.h>

int isValid(int n) {
    for (int i=20; i > 2; i--) {
        if (n%i != 0) return 0;
    }
    return 1;
}

int main() {
    int result = 20;
    while (!isValid(result)) result += 20;
    printf("%d\n", result);
    return 0;
}