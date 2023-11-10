<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Success</title>
</head>
<body>
<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@include file="dbcon.jsp"%>

<%
String adminuserid = request.getParameter("adminuserid");
String adminpassword = request.getParameter("adminpassword");

Connection con = DriverManager.getConnection(url, uname, upass);

Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from admindetails where adminuserid='"+adminuserid+"' AND adminpassword='"+adminpassword+"'");

if (rs.next()) {
    session.setAttribute("adminuserid", adminuserid);

    response.sendRedirect("home.jsp");

    HttpSession hs = request.getSession();
    hs.setAttribute("k1", adminuserid);
} else {
    response.sendRedirect("index.jsp");
}

%>
</body>
</html>
