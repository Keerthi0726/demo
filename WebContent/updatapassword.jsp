<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="dbcon.jsp"%>

<%
String opassword = request.getParameter("opassword");
String npassword = request.getParameter("npassword");
String cpassword = request.getParameter("cpassword");

//if(opassword.isEmpty()||npassword.isEmpty()||cpassword.isEmpty())
//{
	//out.println("Enter all Credentials");
	
//}
//else
//{ //

Connection con = DriverManager.getConnection(url,uname,upass);
	//Executing a query
	Statement st64= con.createStatement();
	
	ResultSet rs64 = st64.executeQuery("select * from newregistration where Password= '"+ opassword + "'");
	
	
	
	if (rs64.next()) 
	{ 
		
		String pwd = rs64.getString("Password");
		
		
		if(npassword.equals(cpassword))
		{
			if(pwd.equals(opassword))
			{   HttpSession hs=request.getSession();
        	    String uid=(String) hs.getAttribute("k1");
        	//Registering JDBC driver
				Connection con65 = DriverManager.getConnection(url,uname,upass);
				//Executing a query
				Statement st65=con65.createStatement();
				
				//updating password in db table 
			    int i = st65.executeUpdate("update newregistration set Password='"+ npassword + "' where EmailId='"+uid+"' ");
			    
			    //printing sucess dialog
			
			    response.sendRedirect("inst_admin_Updatepasswordsuccess.jsp");
				
			rs64.close();
st65.close();
con65.close();	
				
			}
			else
			{
				out.println("old password incorrect");
			}
			
		}
		else
		{
			out.println("New Password and Old Password Doen`t Matched");
		}
		
	} 
	else
	{
		out.println("Old Password Incorrect");
	}
	
rs64.close();
st64.close();
con.close();	

	
	

%>
</body>
</html>
