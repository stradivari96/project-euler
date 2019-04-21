#include <stdio.h>

int main() {
    int c = 1;
    while (1) {
        for (int b=1; b < c; b++) {
            for (int a=1; a < b; a++) {
                if (a+b+c==1000 && a*a+b*b == c*c) {
                    printf("%d\n", a*b*c);
                    return 0;
                }  
            }
        }
        c++;
    }
    return 0;
}