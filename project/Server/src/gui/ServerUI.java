package gui;

import controller.EchoServer;
import javafx.application.Application;
import javafx.stage.Stage;

public class ServerUI extends Application{
	final public static int DEFAULT_PORT = 5555;
	
	public static  ServerPortFrameController serverGUI;
	
	public static void main( String args[] ) throws Exception
	   {   
		 launch(args);
	  } // end main
	
	@Override
	public void start(Stage primaryStage) throws Exception {
		// TODO Auto-generated method stub				  		
		serverGUI = new ServerPortFrameController(); // create UserFrame
		 
		serverGUI.start(primaryStage);
	}
	
	
}
