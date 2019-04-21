let c = 1
let sol;

while (!sol) {
    for (let b=1; b < c; b++) {
        for (let a=1; a < b; a++) {
            if (a+b+c===1000 && a*a+b*b === c*c)
                sol = [a,b,c]
        }
    }
    c++
}

console.log(sol.reduce((x, y) => x*y))