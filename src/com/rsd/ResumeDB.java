package com.rsd;
import com.email.durgesh.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ResumeDB")
public class ResumeDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ResumeDB() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("email");
		String tenth = request.getParameter("tenth");
		String twelfth = request.getParameter("twelfth");
		String grad_course = request.getParameter("graduateCourse");
		String grad_marks = request.getParameter("graduateMarks");
		String postgrad_course = request.getParameter("PostgraduateCourse");
		String postgrad_marks = request.getParameter("PostgraduateMarks");
		String designation = request.getParameter("designation");
		String experience = request.getParameter("experience");
		String internship = request.getParameter("intern");
		String project = request.getParameter("project");
		String skills = request.getParameter("skills");
		String curricular = request.getParameter("curricular");
		
		ResumeTable resumeTable = new ResumeTable(email,tenth,twelfth,grad_course,grad_marks,postgrad_course,postgrad_marks,designation,experience,internship,project,skills,curricular);
		ResumeDao dao = new ResumeDao();
		
		if(dao.insert_resume(resumeTable)) {
			System.out.println("inserted");
			EmailSender emailSender = new EmailSender();
			emailSender.resume_mail(email);
			System.out.println("mail sent to "+email);
			response.sendRedirect("thankyou.jsp");
		}
		else {
			System.out.println("not inserted");
			response.sendRedirect("error.jsp");
		}
		
		
	}

}
