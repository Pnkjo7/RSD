package com.rsd;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class rsdDao {

	private String dburl ="jdbc:mysql://localhost:3306/userdb";
	private String dbserver = "root";
	private String dbpassword = "";
	private String dbdriver = "com.mysql.jdbc.Driver";
	
	
	public void LoadDriver(String dbDriver) {
		
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
		public Connection getConnection() {
			
			Connection conn = null;
			try {
				
				conn = DriverManager.getConnection(dburl,dbserver,dbpassword);
				System.out.println("DB Connected");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return conn;
		}
		
		
		public String insert(RSDTable rsd) {
			
			LoadDriver(dbdriver);
			Connection conn = getConnection();
			String result = "";
		String sql= "insert into userdb.candidate_register(FirstName,LastName,Address,PhoneNumber,Email,Password,RePassword) values (?,?,?,?,?,?,?)";
			
			try {
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, rsd.getFirstname());
				ps.setString(2, rsd.getLastname());
				ps.setString(3, rsd.getAddress());
				ps.setString(4, rsd.getPhone());
				ps.setString(5, rsd.getEmail());
				ps.setString(6, rsd.getPass());
				ps.setString(7, rsd.getRepass());
				ps.executeUpdate();
				result = "Data inserted";
				System.out.println(result);
				
			} catch (SQLException e) {
				// TODO: handle exception	
				e.printStackTrace();
				result = "not inserted";
			}
			return result;
			
		}
	
	}
