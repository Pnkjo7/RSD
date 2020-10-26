package com.rsd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Alogin
 */
@WebServlet("/Alogin")
public class Alogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String auname = request.getParameter("auname");
		String apass = request.getParameter("apass");
		
		AloginDao adao = new AloginDao();
		
		if(adao.check(auname, apass))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", auname);
			response.sendRedirect("awelcome.jsp");
		}
		else
		{
			response.sendRedirect("alogin.jsp");
		}
		
	}


}
