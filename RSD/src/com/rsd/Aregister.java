package com.rsd;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Aregister
 */
@WebServlet("/Aregister")
public class Aregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Aregister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @param insert 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws 
	ServletException, IOException {
		String auname=request.getParameter("auname");
		String apass=request.getParameter("apass");
		
		AregisterCol Alogin = new AregisterCol(auname, apass);
		AregisterDao aDao = new AregisterDao();
		String result = aDao.insert(Alogin);
		response.getWriter().print(result);
		
		RequestDispatcher rd = request.getRequestDispatcher("aregister.jsp");
		
		rd.forward(request, response);

	}

}
