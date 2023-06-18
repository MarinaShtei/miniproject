package gui;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.ResourceBundle;

import Entities.Message;
import Entities.MessageType;
import Entities.PromotionSells;
import controller.ChatClient;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundImage;
import javafx.scene.layout.BackgroundPosition;
import javafx.scene.layout.BackgroundRepeat;
import javafx.scene.layout.BackgroundSize;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import javafx.util.Callback;

public class ManagerMarketingController implements Initializable{

	private static Message msg1;
	private static Message msg;
	public static ArrayList<Button>  btnActivate = new ArrayList<>(); //done
	public static ArrayList<Button>  btnDeActivate = new ArrayList<>(); //accept
	public static HashMap<Button,Button>  position = new HashMap<>(); //position of accept button was clicked.
	
	
    @FXML
    private TableColumn<PromotionSells, String> colActtivated;

    @FXML
    private TableColumn<PromotionSells, String> colDeActtivated;

    @FXML
    private TableColumn<PromotionSells, String> colPromotion;


    @FXML
    private Label lblMarketintManger;

    @FXML
    private AnchorPane pane;

    @FXML
    private TableView<PromotionSells> tableView;

    @FXML
    private Label lblMassage;
    
    @FXML
    private Button btnBack;
    

    /**
     * open the back page
     * */
    @FXML
    void pressedBack(ActionEvent event) {
    	btnActivate = new ArrayList<>(); //done
    	  btnDeActivate = new ArrayList<>(); //accept
    	  position = new HashMap<>();
    	ClientMenuController.clientStage.setScene(LoginFrameController.home);
    	//Logout
    	msg = new Message(MessageType.logout, LoginFrameController.user.getUserName());
		ClientMenuController.clientControl.accept(msg);
    }


	@Override
	public void initialize(URL location, ResourceBundle resources) {
		// initialize the background image
				BackgroundSize backgroundSize = new BackgroundSize(pane.getPrefWidth(), pane.getPrefHeight(), true, true, true,
						false);
				BackgroundImage image = new BackgroundImage(new Image("images/PromotionsFrame.png"),
						BackgroundRepeat.NO_REPEAT, BackgroundRepeat.NO_REPEAT, BackgroundPosition.DEFAULT, backgroundSize);
				pane.setBackground(new Background(image));
		lblMassage.setVisible(false);
		//initialize the Welcome label to welcome and the full name of the user
		lblMarketintManger.setText("Welcome "+LoginFrameController.user.getFirstName()+" "+LoginFrameController.user.getLastName());
		
		tableView.setEditable(true);
		colPromotion.setCellValueFactory(new PropertyValueFactory<PromotionSells,String>("promotion"));
		colActtivated.setCellValueFactory(new PropertyValueFactory<PromotionSells,String>("btnactivated"));
		colDeActtivated.setCellValueFactory(new PropertyValueFactory<PromotionSells,String>("btndeactivated"));
		
		//Setting alignment to columns
		colPromotion.setStyle( "-fx-alignment: CENTER;");
		colActtivated.setStyle( "-fx-alignment: CENTER;");
		colDeActtivated.setStyle( "-fx-alignment: CENTER;");
		
	
			
		//defining in each row in table "activated" button
Callback<TableColumn<PromotionSells, String >, TableCell<PromotionSells, String >> cellFactoryActivatePromotion =
				new Callback<TableColumn<PromotionSells, String >, TableCell<PromotionSells, String >>(){

			 @Override
	            public TableCell call(final TableColumn<PromotionSells, String> param) {
	                final TableCell<PromotionSells, String> cell = new TableCell<PromotionSells, String>() {

	                    final Button btn = new Button("activate");
	                   
	                    @Override
	                    public void updateItem(String item, boolean empty) {
	                        super.updateItem(item, empty);
	                        if (empty) {
	                            setGraphic(null);
	                            setText(null);
	                        } else {
	                        	PromotionSells promotionDetail = getTableView().getItems().get(getIndex());
	                        	if(promotionDetail.getActivated().equals("activate"))
	                         		btn.setDisable(true);
	                         	else
	                         		btn.setDisable(false);
	                        		setGraphic(btn);
	                        		setText(null);
	                        		
	                        	btn.setOnAction(event -> {
	                        		int index = getIndex() +1;
	                        		btnDeActivate.get(index).setDisable(false);
	                        		btn.setDisable(true);
	                        			//change in DB to activate, set region to selected promotion.
	                        	    	msg = new Message(MessageType.setToActivate, (Object)(LoginFrameController.user.getRegion()+ "#" + promotionDetail.getPromotion()));
	                        	    	ClientMenuController.clientControl.accept((Object) msg);
	                        	    	lblMassage.setVisible(true);
	                        	    	lblMassage.setText("activate "+ promotionDetail.getPromotionWithPrecent() + " in "+LoginFrameController.user.getRegion());
	                        	    	});
	                        	btnActivate.add(btn);
	                        }
	                    }
						
	                };
	                return cell;
			 }	
		};
		//defining customer activated column 
		colActtivated.setCellFactory(cellFactoryActivatePromotion);
		
		
		//defining in each row in table "deActivated" button
		Callback<TableColumn<PromotionSells, String >, TableCell<PromotionSells, String >> cellFactoryDeActivatePromotion =
						new Callback<TableColumn<PromotionSells, String >, TableCell<PromotionSells, String >>(){

					 @Override
			            public TableCell call(final TableColumn<PromotionSells, String> param) {
			                final TableCell<PromotionSells, String> cell = new TableCell<PromotionSells, String>() {

			                    final Button btn = new Button("deActivate");
			                   
			                    @Override
			                    public void updateItem(String item, boolean empty) {
			                        super.updateItem(item, empty);
			                        if (empty) {
			                            setGraphic(null);
			                            setText(null);
			                        } else {
			                        	PromotionSells promotionDetail = getTableView().getItems().get(getIndex());
			                        	
			                        	if(promotionDetail.getActivated().equals("notActivate"))
			                         		btn.setDisable(true);
			                         	else
			                         		btn.setDisable(false);
			                        	
	                        	    	btnDeActivate.add(btn);
			                        	btn.setOnAction(event -> {
			                        		btnActivate.get(getIndex()+1).setDisable(false);
			                        		btn.setDisable(true);
			                        		
			                        			//change in DB to activate, set region to selected promotion.
			                        	    	msg = new Message(MessageType.setToDeActivate, (Object)(LoginFrameController.user.getRegion() + "#" + promotionDetail.getPromotion()));
			                        	    	ClientMenuController.clientControl.accept((Object) msg);
			                        	    	lblMassage.setVisible(true);
			                        	    	lblMassage.setText("deActivate "+ promotionDetail.getPromotionWithPrecent() + " in "+LoginFrameController.user.getRegion());
			                        	    	
			                        	    	});
			                        	setGraphic(btn);
		                        		setText(null);
			                        }
			                    }
								
			                };
			                return cell;
					 }	
				};		
				
				//defining customer received column 
				colDeActtivated.setCellFactory(cellFactoryDeActivatePromotion);
				
				
				//creating table promotion
				ObservableList<PromotionSells> tvObservableList = FXCollections.observableArrayList();
				callToDb(LoginFrameController.user.getRegion());
				ArrayList<PromotionSells> promotions = (ArrayList<PromotionSells>) ChatClient.msgServer.getMessageData();
				
				for (PromotionSells row : promotions) {
					tvObservableList.add(row);
				}
		    	tableView.setItems(tvObservableList);
	}
	
	  public void start(Stage primaryStage) throws IOException{
	    	ClientMenuController.clientStage = primaryStage;
	    	Parent root = FXMLLoader.load(getClass().getResource("/gui/MarketingManagerFrame.fxml"));    	
	    	Scene home = new Scene(root);
			primaryStage.setScene(home);
			primaryStage.setTitle("Ekrut - Marketing Worker >> Promotions");
			// On pressing X (close window) the user logout from system and the client is
			// disconnect from server.
			primaryStage.setOnCloseRequest(e -> {
				msg = new Message(MessageType.logout, LoginFrameController.user.getUserName());
				ClientMenuController.clientControl.accept(msg);
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
	primaryStage.show();

		}
	
	private void callToDb(String region) {
		msg1 = new Message(MessageType.getPromtion, region);
		ClientMenuController.clientControl.accept(msg1);
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
