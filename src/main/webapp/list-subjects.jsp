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
		<h1>Subject Management</h1>
		<h2>
			<a href="logout.jsp">Logout</a> 
			<a href="createSubject.jsp">Add New Subject</a>
			<table border="1" cellpadding="5">
				<caption>
					<h2>List of Subjects</h2>
				</caption>
				<tr>
					<th>S.No</th>
					<th>Subject_Name</th>
					<th>Teacher_classRoom</th>
					
				</tr>
				<tr>
					<th>1</th>
					<th>computers</th>
					<th>sam-class 10, Dammy-class 11</th>
					
					
				</tr>
				<tr>
					<th>2</th>
					<th>electronics</th>
					<th> Curran-class 11</th>
					
					
				</tr>
				<tr>
					<th>3</th>
					<th>mechanical</th>
					<th>tom-class 12, franci-class 10</th>
					
					
				</tr>
				<tr>
					<th>4</th>
					<th>civil</th>
					<th>luci-class 10, cherry-class 12</th>
					
					
				</tr>
				<tr>
					<th>5</th>
					<th>science</th>
					<th>lara-class 11</th>
					
					
				</tr>
				<c:forEach var="student" items="${students}">
					<tr>
						<td><c:out value="${student.id}" /></td>
						<td><c:out value="${student.name}" /></td>
						<td><c:out value="${student.email}" /></td>
						
					</tr>
				</c:forEach>
				
				

			</table>
		</h2>
	</center>

</body>
</html>
