<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>List</title>
</head>
<body>
	<h3>Employees List</h3>
	<a href="/Ch05">Back to list</a>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Phone</th>
			<th>Position</th>
			<th>Department</th>
			<th>Start Date</th>
			<th>Manage</th>
		</tr>
		<c:forEach var="member" items="${members}">
		<tr>
			<td>${member.uid}></td>
			<td>${member.name}></td>
			<td>${member.hp}></td>
			<td>${member.pos}></td>
			<td>${member.dep}></td>
			<td>${member.rdate}></td>
			<td>
				<a href="/Ch05/member/modify?uid=${member.uid}">Edit</a>
				<a href="/Ch05/member/delete?uid=${member.uid}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>