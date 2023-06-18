package gui;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import Entities.Message;
import Entities.MessageType;
import Entities.OrdersReport;
import Entities.Report;
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
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundImage;
import javafx.scene.layout.BackgroundPosition;
import javafx.scene.layout.BackgroundRepeat;
import javafx.scene.layout.BackgroundSize;
import javafx.stage.Stage;

public class OrderReportViewController implements Initializable{


    @FXML
    private BarChart<String, Integer> BarChartSalesPerInstitution;

    @FXML
    private CategoryAxis categoryAxisInstitutions;

    @FXML
    private NumberAxis numberAxisSales;
    
    @FXML
    private AnchorPane pane;

    private static Series<String, Integer> series1;
    private static Series<String, Integer> series2;
    private static OrdersReport orderReport;
    // TODO add 
    
    
    @FXML
    void BackToPreviosePage(ActionEvent event) {
    	ReportSearchFrameController reportSearchFrameController = new ReportSearchFrameController();
		try {
			reportSearchFrameController.start(ClientMenuController.clientStage);
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

	public void start(Stage primaryStage, OrdersReport selectedReport) throws IOException{
		orderReport = selectedReport;
		ClientMenuController.clientStage = primaryStage;
		if (LoginFrameController.user.getRole().equals("RegionManager"))
			primaryStage.setTitle("Ekrut - Region Manager >> Menu >> Report Search >> Orders Report");
		else
			primaryStage.setTitle("Ekrut - CEO >> Menu >> Report Search >> Orders Report");
		Parent root = FXMLLoader.load(getClass().getResource("/gui/OrderReportView.fxml"));
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
		
		series1 = orderReport.getGraph("local");
		series2 = orderReport.getGraph("pickup");
		BarChartSalesPerInstitution.setTitle("Number of orders per vending machine ("+orderReport.getMonth()+" - "+orderReport.getYear()+")");
		BarChartSalesPerInstitution.getData().addAll(series1, series2);
	}

}
