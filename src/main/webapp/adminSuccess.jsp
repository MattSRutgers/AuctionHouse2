<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import ="java.sql.*" %>

<%
    if (session.getAttribute("user") == null) {
%>
    	You are currently logged out.
    	<br>
    	<a href="Login.jsp">Login here</a>
<%
    } else {
    	out.println("Hello " + session.getAttribute("user"));
%>
		<br>
        Welcome admin!
        Now go do admin things
        <br>
        Or, <a href='logout.jsp'>Log Out</a>
<%
    }
%>

</body>
</html>