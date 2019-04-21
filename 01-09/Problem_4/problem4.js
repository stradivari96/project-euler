function isPal(number) {
  let string = String(number)
  let reversed = string.split('').reverse().join('')
  return string === reversed
}

let result = 0

for (let a=101; a < 1000; a++) {
  for (let b=101; b < 1000; b++) {
    const c = a*b
    if (c > result && isPal(c)) result = c
  }
}

console.log(result)