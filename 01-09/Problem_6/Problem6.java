
public class Problem6 {

    public static void main(String[] args) {
        int sum = 0;
        int sumSquares = 0;
        for (int i=1; i <= 100; i++) {
            sum += i;
            sumSquares += i*i;
        }
        System.out.println(sum*sum-sumSquares);
    }
}