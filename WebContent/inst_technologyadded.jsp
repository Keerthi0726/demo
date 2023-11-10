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
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Add a Technology</li>
      </ol>
      <!-- Area Chart Example-->
        <div class="alert"style="background-color:#41af28 ">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sucess!</strong> Technology Added Sucessfully...
</div>

      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> List of Technologies</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  
                  <th>Technology Id</th>
                  <th>Technology Name</th>
                  
                  
                </tr>
              </thead>
              
              <tbody>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>

<%


Connection con = DriverManager.getConnection(url,uname,upass);

	//Executing a query
	Statement st48= con.createStatement();
    PreparedStatement pst48=con.prepareStatement("select * from listoftechnologies where uid=?");
	
	pst48.setString(1,uid);
	ResultSet rs48=pst48.executeQuery();
%>

	     
	<%
    while (rs48.next()) 
    {
     %>

     
     
     <TR>
<TD><%=rs48.getString(1)%></TD>
<TD><%=rs48.getString(2)%></TD>




<% } %>
     </TR>



<% 	
	
rs48.close();
pst48.close();
st48.close();
con.close();
	
	


%>
                
              </tbody>
            </table>
          </div>
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
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>
l>