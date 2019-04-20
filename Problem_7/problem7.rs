
fn main() {
    let mut primes = vec![2];
    let mut i = 3;
    let mut counter = 1;

    while counter < 10_001 {
        let mut is_prime = true;
        for prime in &primes {
            if i%prime == 0 {
                i += 2;
                is_prime = false;
                break;
            }
        }
        if is_prime {
            primes.push(i);
            counter += 1;
        }
    }
    println!("{}", primes[counter-1])
}