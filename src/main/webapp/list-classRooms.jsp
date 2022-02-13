<%@page import="com.simplilearn.entity.ClassRoom"%>
<%@page import="com.simplilearn.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Student</title>
</head>
<body>
	<center>
		<h1>Class Room Management</h1>
		<h2>
			<a href="logout.jsp">Logout</a> 
			<a href="createClass.jsp">Add New Class Room</a>
			<table border="1" cellpadding="5">
				<caption>
					<h2>List of Class_Rooms</h2>
				</caption>
				<tr>
					<th>s.no</th>
					<th>ClassRoom_name</th>
					<th>Teacher_subject</th>
						
				</tr>
				<tr>
					<th>1</th>
					<th>Class -10</th>
					<th>sam-computer, luci-civil, franci-mechanical</th>
						
				</tr>
				<tr>
					<th>2</th>
					<th>Class -11</th>
					<th>curran-electronics, lara-science, dummy-computer</th>
						
				</tr>
				<tr>
					<th>3</th>
					<th>Class -12</th>
					<th>tom-mechanical, cherry-civil</th>
						
				</tr>
				

			</table>
		</h2>
	</center>

</body>
</html> 