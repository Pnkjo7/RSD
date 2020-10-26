package com.rsd;


public class AregisterCol {
	private String uname,pass;

	
	public AregisterCol() {
		super();
	}


	public AregisterCol(String auname, String apass) {
		super();
		this.uname = auname;
		this.pass = apass;
			}


	public String getauname() {
		return uname;
	}


	public void setauname(String auname) {
		this.uname = auname;
	}


	public String getapass() {
		return pass;
	}


	public void setapass(String apass) {
		this.pass = apass;
	}




		
}