<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hosted sucessfully</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>
<%
String demoid=request.getParameter("demoid"); 
String demoname=request.getParameter("demoname"); 
String institutename=request.getParameter("institutename"); 
String trainername=request.getParameter("trainername"); 
String trainerexperience=request.getParameter("trainerexperience");
String date=request.getParameter("date");
String time=request.getParameter("time");
String duration=request.getParameter("duration");
String contactemail=request.getParameter("contactemail"); 
String contactnumber=request.getParameter("contactnumber"); 
String contactperson=request.getParameter("contactperson"); 
String noofseats=request.getParameter("noofseats");
String address=request.getParameter("address");





Connection con = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st66= con.createStatement();
		
		
		
		
		 int i=st66.executeUpdate("update hostademo set demoname='"+demoname+"',institutename='"+institutename+"',trainername='"+trainername+"',trainerexperience='"+trainerexperience+"',date='"+date+"',time='"+time+"',duration='"+duration+"',contactemail='"+contactemail+"',contactnumber='"+contactnumber+"',contactperson='"+contactperson+"',noofseats='"+noofseats+"',address='"+address+"' where DemoId='"+demoid+"'");
		
		
		
		if(i>0)
 		{
			
 			response.sendRedirect("Updateddetails.jsp");
		
			
 		}
		
			
		
		   
 	
 	
 	   // out.println("table is empty");
 	
 	
		st66.close();
con.close();
	  
		
    
//}




%>
</body>
</html>