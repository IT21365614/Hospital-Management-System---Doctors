<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "updatedoctor.css">
</head>
<body>
	<h1>Update Doctor Details</h1>

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
	<form action = "update" method = "post">
		Doctor ID: <input type = "text" name = "docid" value = "<%= id%>" readonly><br>
		Name: <input type = "text" name = "name" value = "<%= name%>"><br>
		Address: <input type = "text" name = "address" value = "<%= address%>"><br>
		Phone: <input type = "text" name = "phone" value = "<%= phone%>" maxlength = "10"><br>
		Email: <input type = "email" name = "email" value = "<%= email%>"><br>
		Department: <input type = "text" name = "department" value = "<%= department%>"><br>
		Specialization: <input type = "text" name = "specialization" value = "<%= specialization%>"><br>
		Doctor Initials: <input type = "text" name = "doctor_initials" value = "<%= doctor_initials%>"><br>
		Allocated Nurse: <input type = "text" name = "allocated_nurse" value = "<%= allocated_nurse%>"><br>
		Doctor Status: <input type = "text" name = "doctor_status" value = "<%= doctor_status%>"><br>
		Special Position: <input type = "text" name = "special_position" value = "<%= special_position%>"><br>
		Username: <input type = "text" name = "uname" value = "<%= userName%>"><br>
		Password: <input type = "text" name = "pass" value = "<%= password%>"><br>
		
		
		
		<input type = "submit" name = "submit" value = "update" id = "btn">
		
		
	</form>
	</div>

</body>
</html>