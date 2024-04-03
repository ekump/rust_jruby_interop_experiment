public class HelloWorld {
    static {
        System.loadLibrary("rust_world");
    }

    public static native String helloFromRust(String name);
}
