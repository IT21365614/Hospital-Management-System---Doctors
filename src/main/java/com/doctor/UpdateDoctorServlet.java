package com.doctor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("docid");
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
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = DoctorDBUtil.updatedoctor(id, name, address, phone, email, department, specialization, doctor_initials, allocated_nurse, doctor_status, special_position, userName, password);
		
		if(isTrue == true) {
			RequestDispatcher dispatch = request.getRequestDispatcher("success.jsp");
			dispatch.forward(request, response);
		}
		else {
			RequestDispatcher dispatch = request.getRequestDispatcher("unsuccess.jsp");
			dispatch.forward(request, response);
		}
	}

}
