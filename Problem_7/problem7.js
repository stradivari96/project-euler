const primes = [2]
let i = 3

while (primes.length < 10001) {
    let isPrime = primes.every((prime) => {
        if (i%prime == 0) {
            i += 2
            return false
        }
        return true
    })
    if (isPrime) primes.push(i)

}

console.log(primes[primes.length -1])