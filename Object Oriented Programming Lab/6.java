import java.io.File;
import java.io.FileWriter;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        //Writting my name and roll
        FileWriter writeFile = new FileWriter("Test.txt");
        writeFile.write("Name: Sajeeb Kumar Ray\n");
        writeFile.write("Roll: 200622\n");
        writeFile.close();
        
        //Reading file
        File obj = new File("Test.txt");
        FileReader readFile = new FileReader(obj);
        char str[] = new char[50];
        readFile.read(str);
        System.out.println(str);
        readFile.close();
    }
}

/*
Output in the test.txt file:
    Name: Sajeeb kumar Ray
    Roll: 200622

Output in the consol:
    Name: Sajeeb kumar Ray
    Roll: 200622
*/