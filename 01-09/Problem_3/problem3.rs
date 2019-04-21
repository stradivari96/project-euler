// rustc problem2.rs

fn main() {
    let mut number: u64 = 600_851_475_143;
    let mut factor = 2;
    while factor < number {
        while number%factor == 0 {
            number /= factor;
        }
        factor += 1;
    }
    println!("{}", number);
}