package com.users;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

public class User {
	private String username;
	private String password;
	private String email;
	private String firstName;
	private String lastName;
	private String middleName;
	private String address;
	private String street;
	private String city;
	private String state;
	private Calendar date;
	private List<Account> accounts;
	
	public User(){
	}
	
	public String getDate(){
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		this.date = Calendar.getInstance();
		return dateFormat.format(this.date);
	}
	
	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
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



	public String getMiddleName() {
		return middleName;
	}



	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getStreet() {
		return street;
	}



	public void setStreet(String street) {
		this.street = street;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public List<Account> getAccounts() {
		return accounts;
	}



	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}

	public String getUsername() {
		return username;
	}
	
	public void setUsername(String userName) {
		this.username = userName;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
