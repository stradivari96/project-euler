fn gcd(a: i32, b: i32) -> i32 {
    let c = if a < b { a } else { b };
    let mut result = 0;
    for n in (1..=c).rev() {
        if a%n == 0 && b%n == 0 {
            result = n;
            break;
        }
    }
    result
}

fn main() {
    let mut result = 2;
    for i in 1..=20 {
        if result%i != 0 {
            result = result*i / gcd(result, i)
        }
    }
    println!("{}", result)
}