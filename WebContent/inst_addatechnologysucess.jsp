<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Institute Admin</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="dbcon.jsp"%>
<%
String uid=null;
uid=(String)session.getAttribute("pageid");
if(uid==null)
{
	 response.sendRedirect("login.jsp");


}

String technologyname = request.getParameter("technologyname");

 //

Connection con = DriverManager.getConnection(url,uname,upass);
Statement st26=con.createStatement();
ResultSet rs26=st26.executeQuery("select * from listoftechnologies");
if(rs26.next())
{
	    rs26.last();
		String str =rs26.getString(1);
		String str1=str.substring(str.lastIndexOf("_")+1 );
		
		Integer id2=Integer.valueOf(str1);
			
			id2++;
			
			String name_id2=technologyname+"_"+id2;
			int i=st26.executeUpdate("insert into listoftechnologies(TechnologyId,TechnologyName,Uid) values('"+name_id2+"','"+technologyname+"','"+uid+"')");
	        response.sendRedirect("inst_technologyadded.jsp");
			
	
}
else
{ int id=1;
  String str=String.valueOf(id);
  String name=technologyname+"_"+str;
  int i=st26.executeUpdate("insert into listoftechnologies(TechnologyId,TechnologyName,Uid) values('"+name+"','"+technologyname+"','"+uid+"')");	
  response.sendRedirect("inst_technologyadded.jsp");
  
}
rs26.close();
st26.close();
con.close();
 












%>
</body>
</html>
