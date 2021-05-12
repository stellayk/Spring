<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Modify</title>
</head>
<body>
	<h3>Modify the info</h3>
	<a href="/ch05">Back to list</a>
	<form action="/ch05/member/modify" method="post">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="uid" readonly value="${memberVo.uid}"/></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="${memberVo.name}"/></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="text" name="hp" value="${memberVo.hp}"/></td>
			</tr>
			<tr>
				<td>Position</td>
				<td>
					<select name="pos">
						<option>associate</option>
						<option>manager class2</option>
						<option>manager class1</option>
						<option>deputy manager</option>
						<option>head manager</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Department</td>
				<td>
					<select name="dep">
						<option value="101">1</option>
						<option value="102">2</option>
						<option value="103">3</option>
						<option value="104">4</option>
						<option value="105">5</option>
						<option value="106">6</option>
						<option value="107">7</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="Save changes"/></td>
			</tr>		
		</table>
	</form>
</body>
</html>