<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Doctor</title>
<link rel = "stylesheet" type = "text/css" href = "updatedoctor.css">
</head>
<body>
	<h1>Delete Doctor Details</h1>
	
	<%
		String id = request.getParameter("id");	
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
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
	%>
	
	<div class = "table">
	<form action = "deletedoc" method = "post">
		Doctor ID <input type = "text" name = "docid" value = "<%= id%>" readonly><br>
		Name <input type = "text" name = "name" value = "<%= name%>" readonly><br>
		Address <input type = "text" name = "address" value = "<%= address%>" readonly><br>
		Phone <input type = "text" name = "phone" value = "<%= phone%>" readonly><br>
		Email <input type = "text" name = "email" value = "<%= email%>" readonly><br>
		Department <input type = "text" name = "department" value = "<%= department%>" readonly><br>
		Specialization <input type = "text" name = "specialization" value = "<%= specialization%>" readonly><br>
		Doctor Initials <input type = "text" name = "doctor_initials" value = "<%= doctor_initials%>" readonly><br>
		Allocated Nurse <input type = "text" name = "allocated_nurse" value = "<%= allocated_nurse%>" readonly><br>
		Doctor Status <input type = "text" name = "doctor_status" value = "<%= doctor_status%>" readonly><br>
		Special Position <input type = "text" name = "special_position" value = "<%= special_position%>" readonly><br>
		Username <input type = "text" name = "uname" value = "<%= userName%>" readonly><br>
		Password <input type = "text" name = "pass" value = "<%= password%>" readonly><br>
		
		
		
		<input type = "submit" name = "submit" value = "Delete" id = "btn">
		
		
	</form>
	</div>
</body>
</html>