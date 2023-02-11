package com.doctor;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DoctorDBUtil {
	
	private static boolean isSuccess;
	
	public static boolean validate(String username) {
		
		//Creating database connection
		String url = "jdbc:mysql://localhost:3306/hospital";
		String user = "root";
		String pass = "ashen000";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from doctor where Username = '"+username+"'";
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
	//Validating doctor details using the username
	public static List<Doctor> getDoctor(String userName){
		ArrayList<Doctor> doc = new ArrayList<>();
		
		
		//Create db con
		String url = "jdbc:mysql://localhost:3306/hospital";
		String user = "root";
		String pass = "ashen000";
		
	try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from doctor where Username = '"+userName+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String department = rs.getString(6);
				String specialization = rs.getString(7);
				String doctor_initials = rs.getString(8);
				String allocated_nurse = rs.getString(9);
				String doctor_status = rs.getString(10);
				String special_position = rs.getString(11);
				String userU = rs.getString(12);
				String passU = rs.getString(13);
				
				Doctor c = new Doctor(id, name, address, phone, email, department, specialization, doctor_initials, allocated_nurse ,
						              doctor_status , special_position, userU, passU);
				doc.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return doc;
	}
	
	//Insert doctor details to the databse
	public static boolean insertdoctor(String name, String address, String phone, String email, String department, String specialization,
			String doctor_initials, String allocated_nurse, String doctor_status, String special_position, String uname, String passW) {
		boolean isSuccess = false;
		
		//Create db con
		String url = "jdbc:mysql://localhost:3306/hospital";
		String user = "root";
		String pass = "ashen000";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into doctor values(0, '"+name+"', '"+address+"', '"+phone+"', '"+email+"', '"+department+"', '"+specialization+"', '"+doctor_initials+"', '"+allocated_nurse+"', '"+doctor_status+"', '"+special_position+"', '"+uname+"', '"+passW+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
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
	
	
	
	//Updating doctor details
public static boolean updatedoctor(String id, String name, String address, String phone, String email, String department, String specialization, String doctor_initials, String allocated_nurse, String doctor_status, String special_position, String userName, String password) {
		
		//Create db con
				String url = "jdbc:mysql://localhost:3306/hospital";
				String user = "root";
				String pass = "ashen000";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "update doctor set Name = '"+name+"', Address = '"+address+"', Phone = '"+phone+"', Email = '"+email+"', Department = '"+department+"', Specialization = '"+specialization+"', Doctor_Initials = '"+doctor_initials+"', Allocated_Nurse = '"+allocated_nurse+"', Doctor_Status = '"+doctor_status+"', Special_Positions = '"+special_position+"', Username = '"+userName+"', Password = '"+password+"'"
						 + "where DoctorID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
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
	//Deleting doctor details from database
	public static boolean deletedoctor(String id) {
		//Create db con
		String url = "jdbc:mysql://localhost:3306/hospital";
		String user = "root";
		String pass = "ashen000";
	
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "delete from doctor where DoctorID = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
