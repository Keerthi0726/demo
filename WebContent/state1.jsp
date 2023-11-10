<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@ include file="dbcon.jsp"%>
<div class="form-group">
<label for="exampleInputPassword1">Trainer Experience:</label> 
<%
String trainername=request.getParameter("count");  %>

 <%
 //S//tring buffer="<select name='state' class='form-control' onchange='showCity(this.value);'><option value='-1'>Select</option>";  

 Connection con = DriverManager.getConnection(url,uname,upass);  

 Statement stmt61 = con.createStatement();  

 ResultSet rs61= stmt61.executeQuery("Select * from trainerslist where TrainerName='"+trainername+"' ");%>

 <%  if(rs61.next()){%>
 <div class="form-group" id='state'>
            
            <input class="form-control" name="trainerexperience"  type="text"   readonly value="<%=rs61.getString(3)%>">
          </div>

   
  <% }  %>
 

 <%//response.getWriter().println(buffer); 
rs61.close();
stmt61.close();
con.close();

 %>

</body>
</html>