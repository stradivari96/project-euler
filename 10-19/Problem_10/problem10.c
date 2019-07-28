#include <stdio.h>

int main() {
    int numbers[2000000];
    int multiple;
    unsigned long result = 0;

    for (int n=2; n < 2000000; n++) {
        if (numbers[n] < 0) continue;

        result += n;
        multiple = n*2;
        while (multiple < 2000000) {
            numbers[multiple] = -1;
            multiple += n;
        }
    }

    printf("%lu\n", result);
    return 0;
}