<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>
	<h3>User List</h3>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Phone</th>
			<th>Age</th>
			<th>Manage</th>
		</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.uid}</td>
				<td>${user.name}</td>
				<td>${user.hp}</td>
				<td>${user.age}</td>
				<td>
					<a href="/ch05/user/modify?uid=${user.uid}">Edit</a>
					<a href="#">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>