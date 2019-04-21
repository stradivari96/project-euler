let numbers = new Array(2000000)
let result = 0
numbers.fill(1)

for (let n=2; n < 2000000; n++) {
    if (!numbers[n]) continue

    result += n
    multiple = n*2
    while (multiple < 2000000) {
        numbers[multiple] = undefined
        multiple += n
    }
}


console.log(result)