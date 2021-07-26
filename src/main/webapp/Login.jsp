<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
		<title>Login Page</title>
	</head>
	<body>
	Welcome! If you are an established user, please log in:
		<form action="checkLogin.jsp" method="post">
    	  Username: <input type="text" name="username"/> <br/>
    	  Password:<input type="password" name="password"/> <br/>
		  <input type="submit" value="Sign In"/>
		</form>
	<br>
	<br>
	
	Or if new user, please create account
		<form action="createUser.jsp" method="post">
	    	  Username: <input type="text" name="newuser"/> <br/>
	    	  Password:<input type="password" name="newpassword"/> <br/>
			  <input type="submit" value="Sign In"/>
		</form>
	
	<br>	
	Or if you are an admin: 
		<form action="adminLogin.jsp" method="post">
	    	  Username: <input type="text" name="adminname"/> <br/>
	    	  Password:<input type="password" name="adminpassword"/> <br/>
			  <input type="submit" value="Sign In"/>
		</form>
		
	<br>
	Or if you are a customer representative:
		<form action="repLogin.jsp" method="post">
	    	  Username: <input type="text" name="repname"/> <br/>
	    	  Password:<input type="password" name="reppassword"/> <br/>
			  <input type="submit" value="Sign In"/>
		</form>

	
	

 
</body>
</html>