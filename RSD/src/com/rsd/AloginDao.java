package com.rsd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AloginDao {
	String sql = "select * from userdb.Alogin where auname=? and apass=?";
	String url = "jdbc:mysql://localhost:3306/userdb?" + "autoReconnect=true&useSSL=false";
	String username = "root";
	String password = "";
	
	public boolean check(String auname,String apass)
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, auname);
			st.setString(2, apass);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
		
	}

}
