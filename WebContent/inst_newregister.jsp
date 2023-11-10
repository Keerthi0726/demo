<%@page import="javafx.scene.control.Alert" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Registration Success</title>
</head>
<body>


<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@include file="dbcon.jsp"%>

<% 
String uid = (String)session.getAttribute("pageid");

if(uid == null) {
    response.sendRedirect("login.jsp");
} else {
    String typeofinstitute = request.getParameter("typeofinstitute"); 
    String instituteownername = request.getParameter("instituteownername"); 
    String institutetrainername = request.getParameter("institutetrainername"); 
    String emailid = request.getParameter("emailid");
    String password = request.getParameter("password");
    String confirmpassword = request.getParameter("confirmpassword");
    String phone = request.getParameter("phone");
    String mainbranchaddress = request.getParameter("mainbranchaddress");
    String area = request.getParameter("area");
    String city = request.getParameter("city");
    String state = request.getParameter("state");

    if (password != null && password.equals(confirmpassword)) {
        Connection con = DriverManager.getConnection(url, uname, upass);
        Statement st = con.createStatement();

        ResultSet rs1 = st.executeQuery("SELECT * FROM newregistration WHERE EmailId='" + emailid + "'");

        if (rs1.next() == true) {
            response.sendRedirect("regerror.jsp");
        } else {
            ResultSet rs = st.executeQuery("SELECT * FROM newregistration");
            
            if (rs.next()) {
                rs.last();
                String str = rs.getString(2);
                String str1 = str.substring(str.lastIndexOf("_") + 1);
                Integer id2 = Integer.valueOf(str1);
                String str2 = rs.getString(1).substring(0, 4);
                int id3 = id2++;
                String mainname = institutetrainername.substring(0, 4);
                String name_id2 = mainname + "_" + id2;
                
                int i1 = st.executeUpdate("INSERT INTO addressupdate (InstituteName, InstituteEmail) VALUES ('" + institutetrainername + "','" + emailid + "')");
                int i = st.executeUpdate("INSERT INTO newregistration (TypeofTrainer, InstituteId, InstituteOwnerName, InstitutenameOrTrainername, EmailId, Password, Phone, MainBranchAddress, Area, City, State) VALUES ('" + typeofinstitute + "','" + name_id2 + "','" + instituteownername + "','" + institutetrainername + "','" + emailid + "','" + password + "','" + phone + "','" + mainbranchaddress + "','" + area + "','" + city + "','" + state + "')");
                
                if (i > 0) {
                    response.sendRedirect("index.jsp");
                } else {
                    out.println("Registration not successful");
                }
            } else {
                int id = 1;
                String id1 = String.valueOf(id);
                String namepart = institutetrainername.substring(0, 4);
                String name_id = namepart + "_" + id1;
                
                int i1 = st.executeUpdate("INSERT INTO addressupdate (InstituteName, InstituteEmail) VALUES ('" + institutetrainername + "','" + emailid + "')"); 
                int i = st.executeUpdate("INSERT INTO newregistration (TypeofTrainer, InstituteId, InstituteOwnerName, InstitutenameOrTrainername, EmailId, Password, Phone, MainBranchAddress, Area, City, State) VALUES ('" + typeofinstitute + "','" + name_id + "','" + instituteownername + "','" + institutetrainername + "','" + emailid + "','" + password + "','" + phone + "','" + mainbranchaddress + "','" + area + "','" + city + "','" + state + "')");
                
                if (i > 0) {
                    //out.println("Registration Successful");
                  response.sendRedirect("index.jsp");
                } else {
                    out.println("Registration not successful");
                }
            }
        }
    } else {
        out.println("Password and Confirm Password Don't match");
    }
}
%>

</body>
</html>


	