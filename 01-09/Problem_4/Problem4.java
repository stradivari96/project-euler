// javac Problem4.java
// java -classpath . Problem4

public class Problem4 {

    static boolean isPal(int number) {
        String string = Integer.toString(number);
        return string.equals(new StringBuilder(string).reverse().toString());
    }

    public static void main(String[] args) {
        int result = 0;
        for (int i=101; i < 1000; i++) {
            for (int j=101; j < 1000; j++) {
                int prod = i*j;
                if (prod > result && isPal(prod)) {
                    result = prod;
                }
            }
        }
        System.out.println(result);
    }
}