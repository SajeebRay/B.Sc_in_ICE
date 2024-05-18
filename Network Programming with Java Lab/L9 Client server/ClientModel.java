import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class ClientModel {

	public static void main(String[] args) {
		
		try {
			
			Socket soc= new Socket("localhost",4999);
			String str="hello guys";
			PrintWriter output=new PrintWriter(soc.getOutputStream());
			output.println(str);
			output.flush();
			 
			BufferedReader in= new BufferedReader(new InputStreamReader(soc.getInputStream()));
			String strinput=in.readLine();
			System.out.println("Server Sent :"+strinput);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}