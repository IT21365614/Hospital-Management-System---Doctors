package com.doctor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class AdminDBUtil {
	
	private static boolean isSuccess;
	
	public static boolean validate(String username, String password) {

		//Create database connnection
				String url = "jdbc:mysql://localhost:3306/hospital";
				String user = "root";
				String pass = "ashen000";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from admin where Username = '"+username+"' and Password = '"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
				
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	
}
