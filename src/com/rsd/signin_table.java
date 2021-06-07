package com.rsd;
public class signin_table {
	
	private String email,pass;

	
	public signin_table() {
		super();
	}
	
	public signin_table(String email,String pass) {
		
		super();
		this.email = email;
		this.pass = pass;
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
