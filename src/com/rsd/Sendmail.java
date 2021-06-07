package com.rsd;

import java.io.IOException;
import com.email.durgesh.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Sendmail")
public class Sendmail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email_id = request.getParameter("email");
		String note = request.getParameter("note");
		try {

			Email email = new Email("rsdjava@gmail.com", "rsdjava@2020");
			// set from
			email.setFrom("rsdjava@gmail.com", "RSD");
			email.setSubject("Regarding User Verification");
			email.setContent(note, "text/plain");
			email.addRecipient(email_id);
			email.send();

		} catch (Exception e) {
			// TODO: handle exception
		}

		response.getWriter().print(email_id + ' ' + note);
	}

}
