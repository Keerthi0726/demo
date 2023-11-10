<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="dbcon.jsp"%>
<%
HttpSession hs=request.getSession();
String uid=(String) hs.getAttribute("k1");
String technologyname = request.getParameter("technologyname");
String technologydescription = request.getParameter("technologydescription");



Connection con = DriverManager.getConnection(url,uname,upass);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from listoftechnologies");
if(rs.next())
{
	    rs.last();
		String str =rs.getString(1);
		String str1=str.substring(str.lastIndexOf("_")+1 );
		
		Integer id2=Integer.valueOf(str1);
			
			id2++;
			
			String name_id2=technologyname+"_"+id2;
			int i=st.executeUpdate("insert into listoftechnologies(TechnologyId,TechnologyName,Uid,description) values('"+name_id2+"','"+technologyname+"','"+uid+"','"+technologydescription+"')");
	        response.sendRedirect("technologyadded.jsp");
			rs.close();
	
}
else
{ int id=1;
  String str=String.valueOf(id);
  String name=technologyname+"_"+str;
  int i=st.executeUpdate("insert into listoftechnologies(TechnologyId,TechnologyName,Uid,description) values('"+name+"','"+technologyname+"','"+uid+"','"+technologydescription+"')");	
  response.sendRedirect("technologyadded.jsp");
  rs.close();
}














%>
</body>
</html>
