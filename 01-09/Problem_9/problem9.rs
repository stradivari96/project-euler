

fn main() {
    let mut c = 1;
    let mut sol = (0,0,0);
    let mut found = false;
    while !found {
        for b in 1..c {
            for a in 1..b {
                if a+b+c == 1000 && a*a+b*b == c*c {
                    sol = (a,b,c);
                    found = true;
                }
            }
        }
        c += 1;
    }
    println!("{}", sol.0*sol.1*sol.2);
}