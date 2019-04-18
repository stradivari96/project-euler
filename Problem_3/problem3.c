#include <stdio.h>

// gcc problem3.c -o problem3

int main() {
    unsigned long number = 600851475143;
    int factor = 2;
    while (factor < number) {
        while (number%factor == 0){
                number /= factor;
        }
        factor++;
    }
    
    printf("%lu\n", number);
    return 0;
}