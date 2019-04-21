let number = 600851475143
let factor = 2

while (factor < number) {
  while (number%factor == 0) number /= factor
  factor += 1
}
console.log(number)