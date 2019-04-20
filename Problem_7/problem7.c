#include <stdio.h>


int main() {
    unsigned int primes[10001];
    unsigned int i = 3;
    unsigned int counter = 1;
    unsigned int isPrime;

    primes[0] = 2;

    while (counter < 10001) {
        isPrime = 1;
        for (int prime=0; prime < counter; prime++) {
            if (i%primes[prime] == 0) {
                i += 2;
                isPrime = 0;
                break;
            }
        }
        if (isPrime) {
            primes[counter] = i;
            counter += 1;
        }
    }
    printf("%d\n", primes[counter-1]);
    return 0;
}