package com.rsd;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ResumeDao {

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
		
		
		public Boolean insert_resume(ResumeTable resumeTable) {
			
			LoadDriver(dbdriver);
			Connection conn = getConnection();
			Boolean result ;
			String sql= "insert into userdb.candidate_resume(email,tenth_marks,twelfth_marks,grad_course,grad_marks,postgrad_course,postgrad_marks,designation,experience,internship,project,skills,curricular) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			try {
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, resumeTable.getEmail());
				ps.setString(2, resumeTable.getTenth());
				ps.setString(3, resumeTable.getTwelfth());
				ps.setString(4, resumeTable.getGrad_course());
				ps.setString(5, resumeTable.getGrad_marks());
				ps.setString(6, resumeTable.getPostgrad_course());
				ps.setString(7, resumeTable.getPostgrad_marks());
				ps.setString(8, resumeTable.getDesignation());
				ps.setString(9, resumeTable.getExperience());
				ps.setString(10, resumeTable.getInternship());
				ps.setString(11, resumeTable.getProject());
				ps.setString(12, resumeTable.getSkills());
				ps.setString(13, resumeTable.getCurricular());
			
				
				ps.executeUpdate();
				result = true;
				System.out.println(result);
				
			} catch (SQLException e) {
				// TODO: handle exception	
				e.printStackTrace();
				result = false;
			}
			return result;
			
		}
	
	}
