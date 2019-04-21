import java.util.ArrayList;


public class Problem7 {

    public static void main(String[] args) {
        ArrayList<Integer> primes = new ArrayList<Integer>();
        int i = 3;
        boolean isPrime = true;
        primes.add(2);

        while (primes.size() < 10001) {
            for (Integer prime: primes) {
                isPrime = true;
                if (i%prime == 0) {
                    i += 2;
                    isPrime = false;
                    break;
                }
            }
            if (isPrime) {
                primes.add(i);
            }
        }
        System.out.println(primes.get(primes.size()-1));
    }
}