package com.rsd;
public class RSDTable {

		private String firstname,lastname,address,email,pass,repass,phone;

		
		public RSDTable() {
			super();
		}
		
		public RSDTable(String firstname,String lastname,String address , String phone,String email,String pass,String repass) {
			
			super();
			this.firstname = firstname;
			this.lastname = lastname;
			this.address = address;
			this.phone = phone;
			this.email = email;
			this.pass = pass;
			this.repass = repass;
			
		}

		public String getFirstname() {
			return firstname;
		}

		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}

		public String getLastname() {
			return lastname;
		}

		public void setLastname(String lastname) {
			this.lastname = lastname;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
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

		public String getRepass() {
			return repass;
		}

		public void setRepass(String repass) {
			this.repass = repass;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

	}
