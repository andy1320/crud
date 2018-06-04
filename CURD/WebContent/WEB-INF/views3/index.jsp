<html>
<body>
<h2>Enter your email and Password</h2>
<!-- <form action="welcome"> -->

 
</form>
<form name="submit" method="POST" action="welcome">
   

 
	<center>${error}</center>
	<table>
		<tr>
			<td>Username:</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password" name="password" ></td>
		</tr>
		<!-- <tr>
			<td>Category:</td>
			<td><input type="text" name="category"></td>
		</tr> -->
			 <tr><td>Category:</td><td>
				<select name="category">
					<option >--Select--</option>
					<option >admin</option>
					<option >user</option>
					<option >guest</option>
				</select>
			</td></tr>
			<tr>
			<td>&nbsp;</td><td>
			<input type="submit">
			</td>
		</tr>
		
	</table>
	</form>
    <!-- <h2>1. <a href="list">List of Employees</a></h2>
    <h2>2. <a href="add">Add Employee</a></h2>   -->
 
    
</body>
</html>
