package com.rsd;
// DB table 

public class Member {

	
	//private int Id;
	private String name;
	private String pass;

//	public int getId() {
//		return Id;
//	}
	
	public Member() {
		
		super();
		
	}
	public Member(String name , String pass) {
		
		super();
		//this.Id = id;
		this.name = name;
		this.pass = pass;
		
	}
//	public void setId(int id) {
//		Id = id;
//	}
//
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	


}
