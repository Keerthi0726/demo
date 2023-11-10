<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Hosted Demo Details</title>
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
  <!-- Navigation-->
  <%@ include file="navbar.jsp"%>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        
        <li class="breadcrumb-item active">Hosted Demo Details</li>
      </ol>
     
        
      <!-- Example DataTables Card-->
      
      
      
      
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Hosted Demo Details</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                <th>Demo Id</th>
                  <th>Demo Name</th>
                  <th>Institute Name </th>
                  <th>Trainer Name</th>
                 <!--   <th>Trainer Experience</th>-->
                  <th>Date</th>
                  <th>Time</th>
                  <!--  <th>Duration</th>-->
                  <!--  <th>Contact Email</th>-->
                  <!--  <th>Contact Number</th>-->
                  <!--  <th>Contact Person</th>-->
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
	Statement st8=con.createStatement();
	
	
	
	
	ResultSet rs8=st8.executeQuery("select * from hostademo");
%>

	     
	<%
    while (rs8.next()) 
    {
     %>

     
     
     <TR>
<TD><a href="demodetails.jsp?DemoId=<%=rs8.getString(1)%>"><%=rs8.getString(1)%></a></TD>
<TD><%=rs8.getString(2)%></TD>
<TD><%=rs8.getString(3)%></TD>
<TD><%=rs8.getString(4)%></TD>

<TD><%=rs8.getString(6)%></TD>
<TD><%=rs8.getString(7)%></TD>
<TD><%=rs8.getString(12)%></TD>
<TD><%=rs8.getString(13)%></TD>



<% } %>
     </TR>



<% 	
	rs8.close();
st8.close();
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
            <a class="btn btn-primary" href="index.jsp">Logout</a>
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
