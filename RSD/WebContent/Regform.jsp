<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
</head>
<body>
	<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	response.setHeader("Pragma","no-cache");
	response.setHeader("Expires","0");
	
	
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
	
	%>

	Welcome ${username}

	<a href="welcome.jsp">Welcome</a>


	<form action="Logout">
		<input type="submit" value="Logout">
	</form>

	<form action = "Register" method = "post">
		<label for="name">Name:</label><br> 
		<input type="text" id="name" name="name"><br>
		<label for="gender">Gender</label><br> 
		<input type="radio"	id="male" name="gender" value="male"> 
		<label for="male">Male</label><br>
		<input type="radio" id="female" name="gender" value="female">
		<label for="female">Female</label><br> 
		<input type="radio"id="other" name="gender" value="other"> <label for="other">Other</label><br>
		<label for="email">Email:</label><br> 
		<input type="text" id="email" name="email"><br> 
		<label for="cgpa">CGPA:</label><br>
		<input type="text" id="cgpa" name="cgpa"><br> 
		<label for="tenth">10th Marks:</label><br> 
		<input type="text" id="tenth" name="tenth"><br> 
		<label for="twelveth">12th Marks:</label><br> 
		<input type="text" id="twelveth" name="twelveth"><br>
		<input type="submit" name="register">
	</form>

</body>
</html>