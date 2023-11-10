<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title> Institute Admin</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<%String uid=null;
uid=(String)session.getAttribute("pageid");
if(uid==null)
{
	 response.sendRedirect("login.jsp");


}%>


<%@ include file="instnavbar.jsp"%>


  <!-- Navigation-->
  
  
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="inst_admin.jsp">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Host a Demo</li>
      </ol>
      
      
      
      
       <div class="alert"style="background-color:#41af28 ">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sucess!</strong> Demo Hosted Sucessfully...
</div>  
        <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Hosted Demo Details</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%">
              <thead>
                <tr>
                <th>Demo Id</th> 
                  <th>Demo Name</th>
                  <th>Institute Name </th>
                  <th>Trainer Name</th>
                  
                  <th>Date</th>
                   <th>Time</th>
                  <th>Duration in Hours</th>
                 
                  <th>No of Seats</th>
                  <th>Address</th>
                </tr>
              </thead>
              
              <tbody>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>

<%



Connection con = DriverManager.getConnection(url,uname,upass);
	//Executing a query
	//Statement st= con.createStatement();
	PreparedStatement pst34=con.prepareStatement("select * from hostademo where uid=?");
	
	pst34.setString(1,uid);
	
	ResultSet rs34=pst34.executeQuery();
	
	
%>

	     
	<%
    while (rs34.next()) 
    {
     %>

     
     
     <TR>

<TD><a href="inst_demodetails.jsp?DemoId=<%=rs34.getString(1)%>"><%=rs34.getString(1)%></a></TD>
<TD><%=rs34.getString(2)%></TD>
<TD><%=rs34.getString(3)%></TD>
<TD><%=rs34.getString(4)%></TD>

<TD><%=rs34.getString(6)%></TD>
<TD><%=rs34.getString(7)%></TD>
<TD><%=rs34.getString(8)%></TD>

<TD><%=rs34.getString(12)%></TD>
<TD><%=rs34.getString(13)%></TD>





<% } %>
     </TR>



<% 	
	

rs34.close();
pst34.close();
con.close();	
	


%>
                
              </tbody>
            </table>
          </div>
        </div>
        
      </div>
    </div>            
		 
      
      
      
      
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       		    
  
    
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>
