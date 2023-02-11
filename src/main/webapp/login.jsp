<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel = "stylesheet" type = "text/css" href = "login.css">
</head>
<body>
	<div class="logoo">
 
      </div>
      <div class="center">
      <h1>Admin Login</h1>
      <form action = "doctor_log" method = "post">
        <div class="txt_field">
          <label for="uname">Admin Username</label>
          <input type="text" name="username" placeholder="Enter Username">
        </div>
        <div class="txt_field">
          <label for="password">Password</label>
          <input type="password" name="password" placeholder="Enter Password">
        </div>
        <input type = "submit" name = "submit" value = "Login" >
      </form>
    </div>
</body>
</html>