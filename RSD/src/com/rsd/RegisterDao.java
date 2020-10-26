package com.rsd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;

public class RegisterDao {
	
	private String dburl="jdbc:mysql://localhost:3306/userdb";
	private String dbuname="root";
	private String dbpassword="";
	private String dbdriver="com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con=null;
		try {
			con = DriverManager.getConnection(dburl, dbuname, dbpassword);
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		return con;
	}
	

	public String insert(RegisterCol member) {
		loadDriver(dbdriver);	
		Connection con=getConnection();
		String sql="insert into userdb.register values(?,?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, member.getName());
			ps.setString(2, member.getGender());
			ps.setString(3, member.getEmail());
			ps.setString(4, member.getCgpa());
			ps.setString(5, member.getTenth());
			ps.setString(6, member.getTwelveth());
			ps.executeUpdate();

		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}

		return "Success";
	}



}
