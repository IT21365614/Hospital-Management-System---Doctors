<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>
<link rel = "stylesheet" type = "text/css" href = "viewdoc.css">

</head>
<body>
	<div class="logoo">
 
	</div>
      <div class="center">
      <h1>Select Doctor</h1>
      <form action = "view_doc" method = "post">
        <div class="txt_field">
          <label for="uname">Doctor Username: </label>
          <input type="text" name="uid" placeholder="                    Enter Username" id = "txt">
        </div>
        <input type = "submit" name = "submit" value = "Submit" id = "btn">
      </form>
    </div>
</body>
</html>