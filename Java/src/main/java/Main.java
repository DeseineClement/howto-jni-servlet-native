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
            System.err.println("./out: [string] [number]");
            return;
        }

        System.out.println(string.concat(String.valueOf(number)));
    }
}
