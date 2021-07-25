<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.auction.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import ="java.sql.*" %>

<% 
//we need the same connections from checkLogin
try {
	//first we need to grab what the user entered as a string
    String userid = request.getParameter("newuser");   
    String userpw = request.getParameter("newpassword");

    //then we need to connect to the db
    ApplicationDB db = new ApplicationDB();
	Connection con = db.getConnection();
    Statement st = con.createStatement();
    
    ResultSet checkUser;
    
    checkUser = st.executeQuery("select * from users where username='" + userid + "'");
    
    if (checkUser.next()){
    	out.println("User name already exists, please <a href='Login.jsp'>try again</a>");
    }
    else {
    	out.println("Still need to implement adding user, and add successful log in page");
    }
}catch (Exception e) {
	out.print(e);
}
%>


</body>
</html>