package Entities;
import java.io.Serializable;

public class User implements Serializable{
	
	private static final long serialVersionUID = -7030442615498290778L;
	private String userID;
	private String firstName;
	private String lastName;
	private String id;
	private String phoneNumber;
	private String email;
	private String userName;
	private String password;
	private String role;
	private int isLoggedIn;
	private String region;
	private String creditCard;
	
	
	public User(String userID, String id, String firstName, String lastName,String userName,  String password,  String role, String email,  String phoneNumber,
			 int isLoggedIn, String region) {
		super();
		this.userID = userID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.id = id;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.userName = userName;
		this.password = password;
		this.role = role;
		this.isLoggedIn=isLoggedIn;	
		this.region = region;	
	}
	
	public User(User user) {
		this.userID = user.userID;
		this.firstName = user.firstName;
		this.lastName = user.lastName;
		this.id = user.id;
		this.phoneNumber = user.phoneNumber;
		this.email = user.email;
		this.userName = user.userName;
		this.password = user.password;
		this.role = user.role;
		this.isLoggedIn = user.isLoggedIn;
		this.region=user.region;
	}
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	



	public String getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(String creditCard) {
		this.creditCard = creditCard;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getIsLoggedIn() {
		return isLoggedIn;
	}
	public void setIsLoggedIn(int isLoggedIn) {
		this.isLoggedIn=isLoggedIn;
	}
	
	
	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public void printUser() {
		System.out.println("User Name: "+ userName);
		System.out.println("password: "+ password);
		System.out.println("role: "+ role);
		System.out.println("ID: "+ id);
		System.out.println("First name: "+firstName);
		System.out.println("Last Name: "+lastName);
	}
	//for test
	@Override
	public boolean equals(Object u) {
		User user=(User)u;
		if (user.getUserName().equals(this.getUserName()) && user.getPassword().equals(this.getPassword()))
				if(user.getEmail().equals(this.getEmail()) && user.getFirstName().equals(this.getFirstName()))
					if(user.getId().equals(this.getId()) && user.getLastName().equals(this.getLastName()))
						if(user.getRole().equals(this.getRole()))
							return true;
		return false;
	}
}
