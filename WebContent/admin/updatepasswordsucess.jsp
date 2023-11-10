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
<%@page import="java.io.*"%>
<%@ include file="dbcon.jsp"%>
<%
String opassword = request.getParameter("opassword");
String npassword = request.getParameter("npassword");
String cpassword = request.getParameter("cpassword");



        Connection con = DriverManager.getConnection(url,uname,upass);
	Statement st14= con.createStatement();
	
	ResultSet rs14 = st14.executeQuery("select * from admindetails where adminpassword= '"+ opassword + "'");
	
	
	
	if (rs14.next()) 
	{ 
		
		String pwd = rs14.getString("adminpassword");
		
		
		if(npassword.equals(cpassword))
		{
			if(pwd.equals(opassword))
			{   //Registering JDBC driver
				 Connection con1 = DriverManager.getConnection(url,uname,upass);
				//Executing a query
				Statement st15=con1.createStatement();
				
				//updating password in db table 
			    int i = st15.executeUpdate("update admindetails set adminpassword='"+ npassword + "'");
			   %> 
			    


<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Password Updated </title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <%@ include file="navbar.jsp"%>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Update Password</li>
      </ol>
      <!-- Area Chart Example-->
      
      <div class="alert"style="background-color:#41af28 ">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sucess!</strong> Password Updated Sucessfully...
</div>
      
      
      <!--  <b><label for="exampleInputEmail1">Password Updated Sucessfully..!</label></b>-->
     
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <br>
    
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>

				
				
			<%st15.close();
con1.close();	
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
	
	rs14.close();
st14.close();
con.close();


	


%>
</body>
</html>