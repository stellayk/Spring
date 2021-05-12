<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify</title>
</head>
<body>
	<h3>Modify</h3>
	<a href="/ch05">Back to list</a>
	<form action="/ch05/user/modify" method="post">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="uid" readonly value="${userVo.uid}"/></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="${userVo.name}"/></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="text" name="hp" value="${userVo.hp}"/></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="age" value="${userVo.age}"/></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="Save changes"/></td>
			</tr>		
		</table>
	</form>
</body>
</html>