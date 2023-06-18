package gui;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import controller.EchoServer;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundImage;
import javafx.scene.layout.BackgroundPosition;
import javafx.scene.layout.BackgroundRepeat;
import javafx.scene.layout.BackgroundSize;
import javafx.scene.paint.Color;
import javafx.stage.Stage;

public class ServerPortFrameController implements Initializable {

	@FXML
	private AnchorPane pane;

    @FXML
    private Button btnConnectServer;

	@FXML
	private TextArea textAreaConsole;

	@FXML
	private TextField textFielsPort;

    @FXML
    private PasswordField txtFielsDBPassword;

	public static TextArea consoleArea;

	/**
	 * 	connecting to the server and DB
	 * @param event (Click on Connect button)
	 */
	@FXML
	void connectServer(ActionEvent event) {

		int port = 0; // Port to listen on

		try {
			port = Integer.parseInt(textFielsPort.getText()); // Get port from command line
		} catch (Throwable t) {
			port = EchoServer.DEFAULT_PORT; // Set port to 5555
		}

		EchoServer sv = new EchoServer(port);

		try {
			sv.listen(); // Start listening for connections
		} catch (Exception ex) {
			appendToConsole("ERROR - Could not listen for clients!" + port);
			ex.printStackTrace();
		}
		db.mysqlConnection.connectionDb(txtFielsDBPassword.getText());

	}

	public void start(Stage primaryStage) throws IOException {
		primaryStage.setTitle("Ekrut - Server Connection");
		Parent root = FXMLLoader.load(getClass().getResource("/gui/ServerUiMenu.fxml"));
		Scene home = new Scene(root);
		primaryStage.setScene(home); 
		primaryStage.show();
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		consoleArea = textAreaConsole;

		// initialize the background image
		BackgroundSize backgroundSize = new BackgroundSize(pane.getPrefWidth(), pane.getPrefHeight(), true, true, true,
				false);
		BackgroundImage image = new BackgroundImage(new Image("gui/ServerUiMenu.png"), BackgroundRepeat.NO_REPEAT,
				BackgroundRepeat.NO_REPEAT, BackgroundPosition.DEFAULT, backgroundSize);
		pane.setBackground(new Background(image));
	}
	
	/**
	 *  Add text to the console area
	 * @param str - the text to add
	 */
	public void appendToConsole(String str) {
		consoleArea.appendText(str + "\n");

	}

}
