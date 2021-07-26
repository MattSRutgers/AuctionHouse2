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
	Please enter information to register as new user:
		<form action="createUser.jsp" method="post">
    	  Username: <input type="text" name="newuser"/> <br/>
    	  Password:<input type="password" name="newpassword"/> <br/>
		  <input type="submit" value="Sign In"/>
		</form>
	<br>
</body>
</html>