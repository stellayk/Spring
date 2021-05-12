<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<h3>Register new user</h3>
	<a href="/ch05">Back to list</a>
	<form action="/ch05/user/register" method="post">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="uid"/></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="text" name="hp"/></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="age"/></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="Register"/></td>
			</tr>		
		</table>
	</form>
</body>
</html>