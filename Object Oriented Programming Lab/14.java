import java.io.File;
import java.io.FileWriter;
import java.io.FileReader;
import java.io.IOException;

public class FileH {
    public static void main(String[] args) throws IOException {
        File obj = new File("Test.txt");
        if (!obj.exists()) {
            System.out.println("Error: Input file not found");
            return;
        }
        FileReader in = new FileReader(obj);
        FileWriter  out = new FileWriter("CopyTest.txt");
        int c;
        while ((c = in.read()) != -1) {
            out.write(c);
        }  
        in.close();
        out.close();
    }
}
