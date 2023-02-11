<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Details</title>
<link rel = "stylesheet" type = "text/css" href = "doctoraccount.css">

</head>
<body>
	<h2>Doctor Details</h2>
	<table class = "table">
		<c:forEach var="doc" items="${cusDetails}">
		
			<c:set var = "id" value = "${doc.id}"/>
			<c:set var = "name" value = "${doc.name}"/>
			<c:set var = "address" value = "${doc.address}"/>
			<c:set var = "phone" value = "${doc.phone}"/>
			<c:set var = "email" value = "${doc.email}"/>
			<c:set var = "department" value = "${doc.department}"/>
			<c:set var = "specialization" value = "${doc.specialization}"/>
			<c:set var = "doctor_initials" value = "${doc.doctor_initials}"/>
			<c:set var = "allocated_nurse" value = "${doc.allocated_nurse}"/>
			<c:set var = "doctor_status" value = "${doc.doctor_status}"/>
			<c:set var = "special_position" value = "${doc.special_position}"/>
			<c:set var = "userName" value = "${doc.userName}"/>
			<c:set var = "password" value = "${doc.password}"/>
		
		<tr>
			<td>Doctor ID:</td>
			<td>${doc.id}</td>
		</tr>
		<tr>
			<td>Doctor Name:   </td>
			<td>${doc.name}</td>
		</tr>
		<tr>
			<td>Doctor Address:   </td>
			<td>${doc.address}</td>
		</tr>
		<tr>
			<td>Doctor Phone:   </td>
			<td>${doc.phone}</td>
		</tr>
		<tr>
			<td>Doctor Email:   </td>
			<td>${doc.email}</td>
		</tr>
		<tr>
			<td>Doctor Department:   </td>
			<td>${doc.department}</td>
		</tr>
		<tr>
			<td>Doctor Specialization:   </td>
			<td>${doc.specialization}</td>
		</tr>
		<tr>
			<td>Doctor Initials:   </td>
			<td>${doc.doctor_initials}</td>
		</tr>
		<tr>
			<td>Allocated Nurse:   </td>
			<td>${doc.allocated_nurse}</td>
		</tr>
		<tr>
			<td>Doctor Status:   </td>
			<td>${doc.doctor_status}</td>
		</tr>
		<tr>
			<td>Special Positions:   </td>
			<td>${doc.special_position}</td>
		</tr>
		<tr>
			<td>Doctor User Name:   </td>
			<td>${doc.userName}</td>
		</tr>
		<tr>
			<td>Doctor Password:   </td>
			<td>${doc.password}</td>
		</tr>
		
		</c:forEach>
	</table>

	<c:url value = "updatedoctor.jsp" var = "cusupdate">
		<c:param name ="id" value = "${id}"/>
		<c:param name ="name" value = "${name}"/>
		<c:param name ="address" value = "${address}"/>
		<c:param name ="phone" value = "${phone}"/>
		<c:param name ="email" value = "${email}"/>
		<c:param name ="department" value = "${department}"/>
		<c:param name ="specialization" value = "${specialization}"/>
		<c:param name ="doctor_initials" value = "${doctor_initials}"/>
		<c:param name ="allocated_nurse" value = "${allocated_nurse}"/>
		<c:param name ="doctor_status" value = "${doctor_status}"/>
		<c:param name ="special_position" value = "${special_position}"/>
		<c:param name ="userName" value = "${userName}"/>
		<c:param name ="password" value = "${password}"/>
	</c:url>
	
	
	<a href = "${cusupdate}">
	<input type = "button" name = "update" value = "Update Doctor Details" id = "btn">
	</a>
	


	
	
</body>
</html>