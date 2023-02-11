package com.doctor;

public class Doctor {
	private int id;
	private String name;
	private String address;
	private String phone;
	private String email;
	private String department;
	private String specialization;
	private String doctor_initials;
	private String allocated_nurse;
	private String doctor_status;
	private String special_position;
	private String userName;
	private String password;
	
	public Doctor(int id, String name, String address, String phone, String email, String department, String specialization, 
			String doctor_initials, String allocated_nurse, String doctor_status, String special_position, String userName, String password) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.department = department;
		this.specialization = specialization;
		this.doctor_initials = doctor_initials;
		this.allocated_nurse  = allocated_nurse;
		this.doctor_status = doctor_status;
		this.special_position = special_position;
		this.userName = userName;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getEmail() {
		return email;
	}

	public String getDepartment() {
		return department;
	}
	
	public String getSpecialization() {
		return specialization;
	}
	
	public String getDoctor_initials() {
		return doctor_initials;
	}
	
	public String getAllocated_nurse() {
		return allocated_nurse;
	}
	
	public String getDoctor_status() {
		return doctor_status;
	}
	
	public String getSpecial_position() {
		return special_position;
	}
	
	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
	
	
	
}
