
fn main() {
    let sum = (1..101).fold(0, |a, b| a + b);
    let sum_squares = (1..101).fold(0, |a, b| a + b*b);
    println!("{}", sum*sum-sum_squares)
}