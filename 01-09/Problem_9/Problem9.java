
public class Problem9 {

    public static void main(String[] args) {
        int c = 1;
        
        while (true) {
            for (int b=1; b < c; b++) {
                for (int a=1; a < b; a++) {
                    if (a+b+c==1000 && a*a+b*b == c*c) {
                        System.out.println(a*b*c);
                        return;
                    }  
                }
            }
            c++;
        }
    }
}