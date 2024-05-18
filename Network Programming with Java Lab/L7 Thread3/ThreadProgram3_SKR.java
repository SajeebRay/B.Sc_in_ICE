public class ThreadProgram3_SKR {
    public static void main(String[] args) {
        A threadA = new A();
        B threadB = new B();
        C threadC = new C();

        // Start all threads
        threadA.start();
        threadB.start();
        threadC.start();

        // Demonstrate yield()
        System.out.println("Main thread executing...");
        Thread.yield();
        System.out.println("Main thread resumed...");

        // Demonstrate sleep()
        try {
            System.out.println("Main thread sleeping for 2 seconds...");
            Thread.sleep(2000);
            System.out.println("Main thread woke up after sleeping.");
            for (int j = 1; j <= 5; j++) {
                System.out.println("From Main Thread: j = " + j);
            }
        } catch (InterruptedException e) {
            System.out.println("Main thread interrupted while sleeping.");
        }
    }
}


class A extends Thread {
    public void run() {
        for (int i = 1; i <= 5; i++) {
            System.out.println("From Thread A: i = " + i);
        }
        System.out.println("Exit from A");
    }
}

class B extends Thread {
    public void run() {
        for (int j = 1; j <= 5; j++) {
            System.out.println("From Thread B: j = " + j);
        }
        System.out.println("Exit from B");
    }
}

class C extends Thread {
    public void run() {
        for (int k = 1; k <= 5; k++) {
            System.out.println("From Thread C: k = " + k);
        }
        System.out.println("Exit from C");
    }
}