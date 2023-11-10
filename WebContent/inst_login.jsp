<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@include file="dbcon.jsp"%>
<%

// - getting the values from the form



String email=request.getParameter("email"); 
String pass=request.getParameter("pass"); 

Connection con = DriverManager.getConnection(url,uname,upass);
     
	//Executing a query
	Statement st1= con.createStatement();
	ResultSet rs1=st1.executeQuery("select * from newregistration where Password='"+pass+"' AND EmailId='"+email+"'");

	if(rs1.next())
	{
		session.setAttribute("pageid",email); 
		
		response.sendRedirect("inst_admin.jsp");
		
		HttpSession hs=request.getSession();
		hs.setAttribute("k1", email);
		  
	
	}
	else{
		response.sendRedirect("login.jsp");
	}
	
	
	


	
	
	
	
	
%>
</body>
</html>