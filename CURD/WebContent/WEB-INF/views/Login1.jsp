<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h2>Enter your email and Password</h2>
<form action="header">
	<center>${error}</center>
	<table>
		<tr>
			<td>Email:</td>
			<td><input type="text" name="Username"></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password" name="Password"></td>
		</tr>
		
			
			<tr>
			<td>&nbsp;</td><td>
			<input type="submit">
			</td>
		</tr>
		<tr><td>
				<select name="Categery">
					<option value="--">Select</option>
					<option value="Admin">Admin</option>
					<option value="User">User</option>
					<option value="Geust">Geust</option>
				</select>
			</td></tr>
	</table>
	</form>
  
</body>
</html>