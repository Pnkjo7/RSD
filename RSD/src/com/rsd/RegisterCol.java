package com.rsd;

public class RegisterCol {
	private String name,gender,email,cgpa,tenth,twelveth;

	
	public RegisterCol() {
		super();
	}


	public RegisterCol(String name, String gender, String email, String cgpa, String tenth, String twelveth) {
		super();
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.cgpa = cgpa;
		this.tenth = tenth;
		this.twelveth = twelveth;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getCgpa() {
		return cgpa;
	}


	public void setCgpa(String cgpa) {
		this.cgpa = cgpa;
	}


	public String getTenth() {
		return tenth;
	}


	public void setTenth(String tenth) {
		this.tenth = tenth;
	}


	public String getTwelveth() {
		return twelveth;
	}


	public void setTwelveth(String twelveth) {
		this.twelveth = twelveth;
	}
	
}