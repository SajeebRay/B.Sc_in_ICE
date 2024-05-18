public class ThreadProgram4_SKR {

    public static void main(String[] args) {
        // Create three threads
        A threadA = new A();
        B threadB = new B();
        C threadC = new C();

        // Set priorities for the threads
        threadA.setPriority(1); // Priority 1
        threadB.setPriority(5); // Priority 5
        threadC.setPriority(10); // Priority 10

        // Start the threads
        threadA.start();
        threadB.start();
        threadC.start();
    }

    static class A extends Thread {
        public void run() {
            for (int i = 1; i <= 5; i++) {
                System.out.println("From Thread A: i = " + i);
            }
            System.out.println("Exit from A");
        }
    }

    static class B extends Thread {
        public void run() {
            for (int j = 1; j <= 5; j++) {
                System.out.println("From Thread B: j = " + j);
            }
            System.out.println("Exit from B");
        }
    }

    static class C extends Thread {
        public void run() {
            for (int k = 1; k <= 5; k++) {
                System.out.println("From Thread C: k = " + k);
            }
            System.out.println("Exit from C");
        }
    }
}
// The scheduler may not always honor thread priorities, 
// especially in situations where there are many threads competing for CPU time.