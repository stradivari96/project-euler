
public class Problem5 {

    static boolean isValid(int number) {
        for (int i=20; i > 2; i--) {
            if (number%i != 0) return false;
        }
        return true;
    }

    public static void main(String[] args) {
        int result = 20;
        while (!isValid(result)) result += 20;
        System.out.println(result);
    }
}