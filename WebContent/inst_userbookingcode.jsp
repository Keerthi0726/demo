<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<%@ include file="dbcon.jsp"%>
        <%String demo_id=(String)request.getParameter("DemoId");
        
        
        String Name=request.getParameter("Name");
        String Email=request.getParameter("Email");
        String Phone=request.getParameter("Phone");
        %>
        <%
        Connection con = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st49= con.createStatement();
		ResultSet rs49=st49.executeQuery("select * from bookedusers");
		if(rs49.next())
		{
			rs49.last();
			String str3=rs49.getString(1);
			String str4=str3.substring(str3.lastIndexOf("D")+1 );
			Integer inte=Integer.valueOf(str4);
			inte++;
			String user_id="BOOKINGID"+inte;
			
			ResultSet rs50=st49.executeQuery("select * from hostademo where DemoId='"+demo_id+"'");
			rs50.next();
			String string=rs50.getString(14);
			
			
			int i=st49.executeUpdate("insert into bookedusers(UserId,DemoId,Name,Email,ContactNo,Uid) values('"+user_id+"','"+demo_id+"','"+Name+"','"+Email+"','"+Phone+"','"+string+"')");
			if(i>0){
				
				response.sendRedirect("userbookingsucess.jsp?BOOKINGID='"+user_id+"'");
			}
			else{
				}rs50.close();
		}else
		{
			int id=1;
			String str1=String.valueOf(id);
			
			String user_id="BOOKINGID"+str1;
			ResultSet rs50=st49.executeQuery("select * from hostademo where DemoId='"+demo_id+"'");
			rs50.next();
			String string=rs50.getString(14);
			
			
			int i=st49.executeUpdate("insert into bookedusers(UserId,DemoId,Name,Email,ContactNo,Uid) values('"+user_id+"','"+demo_id+"','"+Name+"','"+Email+"','"+Phone+"','"+string+"')");
			if(i>0){
				response.sendRedirect("userbookingsucess.jsp?BOOKINGID='"+user_id+"'");
			}
			else{
				}rs50.close();
		}
		
		rs49.close();
               st49.close();
               con.close();
		
	
%>
</body>
</html>