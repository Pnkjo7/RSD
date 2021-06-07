package com.rsd;
import com.email.durgesh.*;

public class EmailSender{
	
	public void signin_mail(String user_ID , String password) {
		try {
			
			Email email = new Email("rsdjava@gmail.com", "rsdjava@2020");
			// set from
			email.setFrom("rsdjava@gmail.com", "RSD");
			email.setSubject("Regarding User Verification");
			email.setContent("<h4>Dear Candidate , Welcome to Resume Selection Dashboard <br> "
					+ "kindly enter the below credentials for further process. <br> USER ID : " 
					+user_ID+"<br> PASSWORD : "+password+"<br> Regards, Resume Selection Dashboard </h4> ",
					"text/html");
			email.addRecipient(user_ID);
			email.send();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println("sentt "+user_ID);
	}
	
	public void resume_mail(String user_mail) {
		try {
			
			Email email = new Email("rsdjava@gmail.com", "rsdjava@2020");
			// set from
			email.setFrom("rsdjava@gmail.com", "RSD");
			email.setSubject("Regarding Resume Submission");
			email.setContent("<h4>Dear Candidate , Welcome to Resume Selection Dashboard..</h4>  <br> "
					+ "<h1> Your Resume is Successfully Registered.</h1> <br> <h4>We'll Contact you Soon !! </h4> ",
					"text/html");
			email.addRecipient(user_mail);
			email.send();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println("sentt "+user_mail);
	}
}