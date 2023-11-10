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
HttpSession hs=request.getSession();
String uid=(String) hs.getAttribute("k1");

//getting values from the reg form
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
		Statement st16= con.createStatement();
		
		ResultSet rs16=st16.executeQuery("select * from hostademo");
		if(rs16.next())
 		{
 			rs16.last();
 			String str =rs16.getString(1);
 			String str1=str.substring(str.lastIndexOf("_") + 1);
 			
 			
 			
 			Integer id2=Integer.valueOf(str1);
 			
 			id2++;
 			
 			String name_id2=demoname+"_"+id2;
		
		
			
			int i=st16.executeUpdate("insert into hostademo(DemoId,demoname,institutename,trainername,trainerexperience,date,time,duration,contactemail,contactnumber,contactperson,noofseats,address,Uid) values('"+name_id2+"','"+demoname+"','"+institutename+"','"+trainername+"','"+trainerexperience+"','"+date+"','"+time+"','"+duration+"','"+contactemail+"','"+contactnumber+"','"+contactperson+"','"+noofseats+"','"+address+"','"+uid+"')");
			
			if (i > 0) 
			{
				response.sendRedirect("inst_admin_hostademosuccessfully.jsp");
				
			}
			else
			{
				out.println("registration not sucessfull");
			}
 		}
		else{
			
			
			int id=1;
	 		String id1=String.valueOf(id);
	 		
	 	    String name_id = demoname+"_"+id1;
	 	   int i=st16.executeUpdate("insert into hostademo(DemoId,demoname,institutename,trainername,trainerexperience,date,time,duration,contactemail,contactnumber,contactperson,noofseats,address,Uid) values('"+name_id+"','"+demoname+"','"+institutename+"','"+trainername+"','"+trainerexperience+"','"+date+"','"+time+"','"+duration+"','"+contactemail+"','"+contactnumber+"','"+contactperson+"','"+noofseats+"','"+address+"','"+uid+"')");
			if (i > 0) 
			{
				response.sendRedirect("inst_admin_hostademosuccessfully.jsp");
				
			}
			else
			{
				out.println("registration not sucessfull");
			}
		}
			
		
		   
 	
 	
 	   // out.println("table is empty");
 	
 	
	rs16.close();
st16.close();
con.close();	
	  
		
   





%>
</body>
</html>