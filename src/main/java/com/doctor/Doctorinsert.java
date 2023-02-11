package com.doctor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Doctorinsert")
public class Doctorinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String department = request.getParameter("department");
		String specialization = request.getParameter("specialization");
		String doctor_initials = request.getParameter("doctor_initials");
		String allocated_nurse = request.getParameter("allocated_nurse");
		String doctor_status = request.getParameter("doctor_status");
		String special_position = request.getParameter("special_position");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		
		boolean isTrue;
		
		isTrue = DoctorDBUtil.insertdoctor(name, address, phone, email, department, specialization, doctor_initials, allocated_nurse, doctor_status, special_position, uname, pass);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
