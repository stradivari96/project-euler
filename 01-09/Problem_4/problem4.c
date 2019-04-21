#include <stdio.h>

// gcc problem4.c -o problem4

int isPal(int n) {
  int t, reverse = 0;
 
  t = n;
 
  while (t > 0) {
    reverse = reverse * 10;
    reverse = reverse + t%10;
    t = t/10;
  }
 
  if (n == reverse) return 1;
  else return 0;
}

int main() {
    int result = 0;
    for (int i=101; i < 1000; i++) {
        for (int j=101; j < 1000; j++) {
            int prod = i*j;
            if (prod > result && isPal(prod)) result = prod;
        }
    }
    printf("%d\n", result);
    return 0;
}