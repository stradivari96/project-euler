// javac Problem2.java
// java -classpath . Problem2


public class Problem2 {

    static int fibonacci(int n) {
        if (n <= 2) return n;
        return fibonacci(n-2) + fibonacci(n-1);
    }

    public static void main(String[] args) {
        int sum = 0;
        for (int i = 1; fibonacci(i) < 4000000; i++) {
            if (fibonacci(i)%2 == 0) {
                sum += fibonacci(i);
            }
        }
        System.out.println(sum);
    }
}