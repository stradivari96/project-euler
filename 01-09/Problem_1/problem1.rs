// rustc problem1.rs

fn main() {
    let num = (1..1000).filter(|&n| n % 3 == 0 || n % 5 == 0);
    let sum = num.fold(0,|a, b| a + b);
    println!("{}", sum)
}