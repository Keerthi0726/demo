<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Institute Admin</title>
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
  <!-- Navigation-->
<%@ include file="instnavbar.jsp"%>
 
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="inst_admin.jsp">Dashboard</a>
        </li>
       
        <li class="breadcrumb-item active">List of Trainers</li>
      </ol>
     
        
      <!-- Example DataTables Card-->
      
      
      
      
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> List of Trainers</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>TrainerId</th>
                  <th>Trainer Name</th>
                  <th>Trainer Experience in Years</th>
                  <th>Technology Name</th>
                  
                  
                </tr>
              </thead>
              <!-- 
              <tfoot>
                <tr>
                  <th>Institute/Trainer Name</th>
                  <th>Owner Name </th>
                  <th>Email Id</th>
                  <th>Phone</th>
                  <th>Password</th>
                  <th>Main Branch Address</th>
                  <th>Area</th>
                  <th>City</th>
                  <th>State</th>
                  <th>Pincode</th>
                </tr>
              </tfoot>   
               -->
              <tbody>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>

<%



Connection con = DriverManager.getConnection(url,uname,upass);

	//Executing a query
	
	PreparedStatement pst43=con.prepareStatement("select * from trainerslist where uid=?");
	
	pst43.setString(1,uid);
	ResultSet rs43=pst43.executeQuery();
%>

	     
	<%
    while (rs43.next()) 
    {
     %>

     
     
     <TR>
<TD><%=rs43.getString(1)%></TD>
<TD><%=rs43.getString(2)%></TD>
<TD><%=rs43.getString(3)%></TD>
<TD><%=rs43.getString(4)%></TD>


</TR>
<% } %>
     



<% 	
rs43.close();
pst43.close();
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
