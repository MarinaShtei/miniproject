package gui;

import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;

import Entities.Message;
import Entities.MessageType;
import Entities.Report;
import Entities.StockStatusReport;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart.Series;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.MenuButton;
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundImage;
import javafx.scene.layout.BackgroundPosition;
import javafx.scene.layout.BackgroundRepeat;
import javafx.scene.layout.BackgroundSize;
import javafx.stage.Stage;

public class StockStatusReportViewController implements Initializable {

	@FXML
	private BarChart<String, Integer> BarChartStockPerMachine;

	@FXML
	private CategoryAxis categoryAxisProduct;

	@FXML
	private NumberAxis numberAxisAmount;

	@FXML
	private AnchorPane pane;

	@FXML
	private ChoiceBox<String> cbInstitution;
	
	public static ObservableList<String> machineLocationsList = FXCollections.observableArrayList();
	private static Series<String, Integer> series;
	private static StockStatusReport stockStatusReport;
	
	@FXML
	void BackToPreviousPage(ActionEvent event) {
		
		ReportSearchFrameController reportSearchFrameController = new ReportSearchFrameController();
		try {
			reportSearchFrameController.start(ClientMenuController.clientStage);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	public void start(Stage primaryStage, StockStatusReport selectedReport) throws IOException{
		stockStatusReport = selectedReport;
		ClientMenuController.clientStage = primaryStage;
		if (LoginFrameController.user.getRole().equals("RegionManager"))
			primaryStage.setTitle("Ekrut - Region Manager >> Menu >> Report Search >> Stock Status Report");
		else
			primaryStage.setTitle("Ekrut - CEO >> Menu >> Report Search >> Stock Status Report");
		Parent root = FXMLLoader.load(getClass().getResource("/gui/StockStatusReportView.fxml"));
		Scene home = new Scene(root);
		primaryStage.setScene(home);
		primaryStage.show();
		// On pressing X (close window) the user logout from system and the client is
		// disconnect from server.
		primaryStage.setOnCloseRequest(e -> {
			ClientMenuController.clientControl.accept(new Message(MessageType.logout, LoginFrameController.user.getUserName()));
			ClientMenuController.clientControl
					.accept(new Message(MessageType.disconnected, LoginFrameController.user.getUserName()));
			// create a PopUp message
			PopUpMessageFrameController popUpMsgController = new PopUpMessageFrameController();

			try {
				popUpMsgController.start(ClientMenuController.clientStage);
				popUpMsgController.closeMsg(3000);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		});
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		// initialize the background image
		BackgroundSize backgroundSize = new BackgroundSize(pane.getPrefWidth(), pane.getPrefHeight(), true, true, true,
				false);
		BackgroundImage image = new BackgroundImage(new Image("images/ReportsFrame.png"),
				BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.DEFAULT, backgroundSize);
		
		pane.setBackground(new Background(image));
		
		machineLocationsList.clear();
		cbInstitution.getItems().clear();
		machineLocationsList.addAll(stockStatusReport.getVendingMachinesLocations());
		cbInstitution.setItems(machineLocationsList);
		cbInstitution.setOnAction(this::swapData);
		cbInstitution.setValue(machineLocationsList.get(0));
	}
	
	private void swapData(ActionEvent event) {
		BarChartStockPerMachine.getData().removeAll(series);
		loadStockStatusOfMachine(cbInstitution.getValue());
	}
	
	private void loadStockStatusOfMachine(String location) {
		BarChartStockPerMachine.setTitle("Stock status of vending machine at "+location+" ("+stockStatusReport.getMonth()+" - "+stockStatusReport.getYear()+")");
		series = stockStatusReport.getGraph(location);
		if (series != null)
			BarChartStockPerMachine.getData().add(series);
	}
}
