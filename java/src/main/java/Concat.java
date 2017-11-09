public class Concat {
    static {
        System.load(System.getProperty("user.dir") + "/libjninative.so");
    }
    public static native String concat(String string, int number);
}
