package com.rsd;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sregister
 */
@WebServlet("/Sregister")
public class Sregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sregister() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws 
	ServletException, IOException {
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		SregisterCol login = new SregisterCol(uname, pass);
		SregisterDao sDao = new SregisterDao();
		String result = sDao.insert(login);
		response.getWriter().print(result);
		
		RequestDispatcher rd = request.getRequestDispatcher("slogin.jsp");
		
		rd.forward(request, response);

	}

}
