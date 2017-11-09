public class Main {
    public static void main(String [] args) {
        int number;
        String string;

        try {
            string = args[0];
            number = Integer.parseInt(args[1]);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.err.println("./out: [string] [number]");
            return;
        } catch (NumberFormatException e) {
            System.err.println("Error: second argument must be a number.");
            return;
        }
        try {
            System.out.println(Concat.concat(string, number));
        } catch (java.lang.UnsatisfiedLinkError e) {
            System.err.println("Error: the native library must be on the jar directory ( " + System.getProperty("user.dir") + " ).");
        }
    }
}
