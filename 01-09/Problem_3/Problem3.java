// javac Problem3.java
// java -classpath . Problem3

public class Problem3 {

    public static void main(String[] args) {
        long number = 600851475143L;
        int factor = 2;
        while (factor < number) {
            while (number%factor == 0) number /= factor;
            factor += 1;
        }
        System.out.println(number);
    }
}