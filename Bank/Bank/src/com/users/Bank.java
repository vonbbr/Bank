package com.users;

import java.util.ArrayList;
import java.util.List;

public class Bank {
	private List<User> users;
	
	public Bank(){
		users = new ArrayList<User>();
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
	
	public boolean checkUserLogin(String username, String password){
		for (int i = 0; i < users.size(); i++){
			if (this.users.get(i).getUsername().equals(username) && this.users.get(i).getPassword().equals(password)){
				
				return true;
			}
		}
		return false;
	}
	
	public User getUser(String username, String password){
		for (int i = 0; i < users.size(); i++){
			String tempUsername = users.get(i).getUsername();
			String tempPassword = users.get(i).getPassword();
			if (tempUsername.equals(username) && tempPassword.equals(password)) {
				return users.get(i);
			}
		}
		return null;
	}
	
	public void addUser(User user){
		this.users.add(user);
	}
}