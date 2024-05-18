import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class ServerModel {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			System.out.println("Waiting for the clients...");
			ServerSocket ss= new ServerSocket(4999);
			Socket soc= ss.accept();
			System.out.println("Client Connected...");
			BufferedReader in= new BufferedReader(new InputStreamReader(soc.getInputStream()));
			String str=in.readLine();
			System.out.println("Client Sent :"+str);
			
			PrintWriter out= new PrintWriter(soc.getOutputStream(),true);
			out.println("I got your msg");
			out.flush();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
