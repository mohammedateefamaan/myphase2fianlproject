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
	<%
		List<Student> students = (List<Student>) session.getAttribute("students");
		if (students != null && !students.isEmpty()) {
			//out.println("Students are : " + students);
		} else {
			//out.println("Empty List");
		}
	%>
	<center>
		<h1>Student Management</h1>
		<h2>
			<a href="logout.jsp">Logout</a> 
			<a href="createStudent.jsp">Add New Student</a>
			<table border="1" cellpadding="5">
				<caption>
					<h2>List of Students</h2>
				</caption>
				
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Class_Room</th>
					</tr>
			
				<tr>
					<th>1</th>
					<th>john</th>
					<th>john@gmail.com</th>
					<th>class 10</th>
					
				</tr>
				<tr>
					<th>1</th>
					<th>john</th>
					<th>john@gmail.com</th>
						<th>class 11</th>
					
				</tr>
				<tr>
					<th>2</th>
					<th>jack</th>
					<th>jack@gmail.com</th>
						<th>class 12</th>
					
				</tr>
				<tr>
					<th>3</th>
					<th>henry</th>
					<th>henry@gmail.com</th>
						<th>class 10</th>
					
				</tr>
				<tr>
					<th>4</th>
					<th>noah</th>
					<th>noah@gmail.com</th>
						<th>class 11</th>
					
				</tr>
				<tr>
					<th>5</th>
					<th>oliver</th>
					<th>oliver@gmail.com</th>
						<th>class 12</th>
					
				</tr>
				<tr>
					<th>6</th>
					<th>liam</th>
					<th>liam@gmail.com</th>
						<th>class 10</th>
					
				</tr>
				<tr>
					<th>7</th>
					<th>aron</th>
					<th>aron@gmail.com</th>
						<th>class 11</th>
					
				</tr>
				<tr>
					<th>8</th>
					<th>etham</th>
					<th>etham@gmail.com</th>
						<th>class 12</th>
					
				</tr>
				<tr>
					<th>9</th>
					<th>james</th>
					<th>james@gmail.com</th>
						<th>class 10</th>
					
				</tr>
				<tr>
					<th>10</th>
					<th>leo</th>
					<th>leo@gmail.com</th>
						<th>class 11</th>
					
				</tr>
				
				<c:forEach var="student" items="${students}">
					<tr>
						<td><c:out value="${student.id}" /></td>
						<td><c:out value="${student.name}" /></td>
						<td><c:out value="${student.email}" /></td>
						<td><a href="edit?id=<c:out value='${student.id}' />">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="delete?id=<c:out value='${student.id}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</h2>
	</center>

</body>
</html> 