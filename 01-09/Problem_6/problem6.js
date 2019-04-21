let range = Array.from({length: 100}, (x,i) => i+1);
let squares = range.map(x => x*x)
let sum = range.reduce((a, b) => a+b)
let sum_squares = squares.reduce((a, b) => a+b)

console.log(sum*sum-sum_squares)