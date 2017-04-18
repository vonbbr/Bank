package com.users;

public class Account {
	private String type;
	private double balance;
	private String name;
	
	public Account(){
	}
	
	public void withdraw(double withdraw){
		this.balance = this.balance - withdraw;
	}
	
	public void deposit(double deposit){
		this.balance = this.balance + deposit;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	
}
