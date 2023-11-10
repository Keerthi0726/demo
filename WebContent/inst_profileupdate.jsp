<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>institute Admin</title>

</head>
<body>
<%@page import="java.io.* "%>
<%@page import="java.sql.*" %>
<%@include file="dbcon.jsp" %>

<%
String instituteOwnerName = request.getParameter("instituteownername");
String email = request.getParameter("emailid");
String password = request.getParameter("password");
String phone = request.getParameter("phone");
String mainBranchAddress = request.getParameter("mainbranchaddress");

try {
    Connection con = DriverManager.getConnection(url, uname, upass);
    String query = "UPDATE newregistration SET InstituteOwnerName=?, emailid=?, Password=?, Phone=?, MainBranchAddress=? WHERE EmailId=?";
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, instituteOwnerName);
    pstmt.setString(2, email);
    pstmt.setString(3, password);
    pstmt.setString(4, phone);
    pstmt.setString(5, mainBranchAddress);
    pstmt.setString(6, email); // Assuming email is the unique identifier for your records

    int updatedRows = pstmt.executeUpdate();

    if (updatedRows > 0) {
        out.println("<script>alert('Profile updated successfully');</script>");
        response.sendRedirect("profile.jsp"); // Redirect to a suitable page after update
    } else {
        out.println("<script>alert('Error updating profile');</script>");
    }

    pstmt.close();
    con.close();
} catch (Exception e) {
    e.printStackTrace();
    out.println("<script>alert('Error updating profile');</script>");
}
%>




</body>
</html>