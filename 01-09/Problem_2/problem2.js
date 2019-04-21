let sum = 0

function fibonacci(n) {
  if (n <= 2) return n;
  return fibonacci(n-2) + fibonacci(n-1);
}

for (let i = 1; fibonacci(i) < 4000000; i++) {
  if (fibonacci(i)%2 == 0) {
    sum += fibonacci(i);
  }
}

console.log(sum)