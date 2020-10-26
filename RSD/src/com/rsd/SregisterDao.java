
package com.rsd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SregisterDao {
	
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
	

	public String insert(SregisterCol member) {
		loadDriver(dbdriver);	
		Connection con=getConnection();
		String sql="insert into userdb.login values(?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, member.getuname());
			ps.setString(2, member.getpass());
			ps.executeUpdate();

		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}

		return "Success";
	}



}
