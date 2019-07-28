

fn main() {
    let mut numbers = [1; 2_000_000];
    let mut result = 0;
    let mut multiple;

    for n in 2..2_000_000 {
        if numbers[n] == 0 {
            continue
        }
        result += n;
        multiple = n*2;
        while multiple < 2_000_000 {
            numbers[multiple] = 0;
            multiple += n;
        }
    }
    
    println!("{}", result);
}