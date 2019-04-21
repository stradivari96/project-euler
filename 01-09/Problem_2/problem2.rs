// rustc problem2.rs

fn fib(n: i32) -> i32 {
    match n {
        1 | 2 => 1,
        3 => 2,
        _ => fib(n - 1) + fib(n - 2),
    }
}

fn main() {
    let mut num = 1;
    let mut result = 0;
    while fib(num) < 4_000_000 {
        if fib(num) % 2 == 0 {
            result += fib(num);
        }
        num += 1;
    }
    println!("{}", result);
}