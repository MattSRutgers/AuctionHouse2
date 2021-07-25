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
try {
	//first we need to grab what the user entered as a string
    String userid = request.getParameter("username");   
    String userpw = request.getParameter("password");

    //then we need to connect to the db
    ApplicationDB db = new ApplicationDB();
	Connection con = db.getConnection();
	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auction");
    
    //we also need somewhere to store the results from the db
    Statement st = con.createStatement();
    
    ResultSet checkUser;
    ResultSet goodUserid;
    
    checkUser = st.executeQuery("select * from users where username='" + userid + "'");
    
    
    if (checkUser.next()){ //if this passes, the username is valid
    	goodUserid = st.executeQuery("select * from users where username='" + userid + "' and password='" + userpw + "'");
    	//out.println("Unknown user, please <a href='Login.jsp'>create account</a>");
    //once we know the data is good display welcome, or prompt to check the password
    	if (goodUserid.next()) {
        	session.setAttribute("user", userid); // the username will be stored in the session
        	out.println("welcome " + userid);
        	out.println("<a href='logout.jsp'>Log out</a>");
        //if the name is good but the login fails, the password must be wrong
    } 	else {
        out.println("Invalid password <a href='Login.jsp'>try again</a>");
    }
    }
    else{
    	out.println("Unknown user, please <a href='createUser.jsp'>create account</a> or <a href='Login.jsp'>try again</a>");
    }
} catch (Exception e) {
	out.print(e);
}
%>
</body>
</html>