// rustc problem4.rs

fn is_pal(number: i32) -> bool {
    let string = number.to_string();
    string == string.chars().rev().collect::<String>()
}

fn main() {
    let mut result = 0;

    for i in 101..1000 {
        for j in 101..1000 {
            let prod = i*j;
            if prod > result && is_pal(prod) {
                result = prod;
            }
        }
    }
    println!("{}", result);
}