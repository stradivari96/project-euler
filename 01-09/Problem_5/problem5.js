function isValid(number) {
  for (let i=20; i > 2; i--) {
    if (number%i !== 0)
      return false
    }
  return true
}

let result = 20

while (!isValid(result)) result += 20

console.log(result)