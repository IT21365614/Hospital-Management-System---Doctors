<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
<link rel = "stylesheet" type = "text/css" href = "doctorinsert.css">
</head>
<body>
	
	
	<h1 id = "header1">Doctor Registration</h1>
	
	<form action = "insert" method = "post">
	<div class = "info">
	<div class = "firsthalf">
		Name: <input type = "text" name = "name" required><br>
		Address: <input type = "text" name = "address" required><br>
		Phone: <input type = "text" name = "phone"  maxlength = "10" required><br>
		Email: <input type = "email" name = "email" required><br>
		Department: <input type = "text" name = "department" required><br>
		Specialization: <input type = "text" name = "specialization" required><br>
	</div>
	<div class = "secondhalf">
		Doctor Initials: <input type = "text" name = "doctor_initials" required><br>
		Allocated Nurse: <input type = "text" name = "allocated_nurse" required><br>
		Doctor Status: <input type = "text" name = "doctor_status" required><br>
		Special Position: <input type = "text" name = "special_position" required><br>
		Username: <input type = "text" name = "uname" required><br>
		Password: <input type = "text" name = "pass" required><br>
	</div>
	</div>
		<input type = "submit" name = "submit" value = "Register" id = "btn">
	</form>
	

</body>
</html>