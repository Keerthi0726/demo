<!DOCTYPE html>

<%@page import="java.sql.SQLException"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>  Welcome to Admin Panel</title>
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
  
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Update Demo Details</li>
      </ol>
      <!-- Icon Cards-->
      
       
      <%@ page import ="java.sql.*" %>
          <%@ page import ="javax.sql.*" %>
          <%@ include file="dbcon.jsp"%>
        <%String inst_id=(String)request.getParameter("InstId"); 
        
       Connection con = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st= con.createStatement();
		
		
		
		ResultSet rs=st.executeQuery("select * from newregistration where InstituteId='"+inst_id+"'");
		if(rs.next()){%>
      
      
      
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-area-chart"></i> Update Institute Details</div>
      <div class="card-body">
       
       <div class="card-body">
        <form name="f1" action="adminupdateinstcode.jsp" method="POST" onsubmit="return check();">
        
        <table width="100%" >
        <tr>
        <td>
          <div class="form-group">
            <label for="exampleInputEmail1">Type of Training:</label><br>
            <input class="form-control" name="tot"  type="text" value="<%=rs.getString(1)%>" readonly>
            
            
            
            
          </div>
          </td>
        <td>
           <div class="form-group">
            <label for="exampleInputEmail1">Institute Id:</label><br>
            <input class="form-control" name="instid"  type="text" value="<%=rs.getString(2)%>" readonly>
           
              
          </div>
          </td>
           <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Institute Owner Name:</label>
            <input class="form-control" name="instoname"  type="text" value="<%=rs.getString(3)%>" >
          </div>
          </td>
           
          </tr>
          <tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Institute Name:</label>
            <input class="form-control" name="iname"  type="text" value="<%=rs.getString(4)%>" >
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Email Id:</label>
            <input class="form-control" name="eid"  type="text" value="<%=rs.getString(5)%>" >
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Password:</label>
            <input class="form-control" name="p"  type="text" value="<%=rs.getString(6)%>">
          </div>
          </td>
          
          
          </tr>
          <tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Phone:</label>
            <input class="form-control" name="co"  type="text" value="<%=rs.getString(7)%>">
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">MainBranch Address</label>
            <input class="form-control" name="madd"  type="text" value="<%=rs.getString(8)%>">
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Area:</label>
            <input class="form-control" name="a"  type="text" value="<%=rs.getString(9)%>">
          </div>
          </td>
          </tr>
          <tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">City:</label>
            <input class="form-control" name="c"  type="text" value="<%=rs.getString(10)%>">
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">State:</label>
            <input class="form-control" name="s"  type="text" value="<%=rs.getString(11)%>">
          </div>
          </td>
          </tr>
         
          
          
          
          
          </table>
          
          <table>
          <tr>
          <td>
          <input class="btn btn-primary btn-block" type="submit" value="Update"/>
          </td>
          <td>
          <a class="btn btn-primary btn-block" href="listofinstitutes.jsp" type="submit">Cancel</a>
          </td>
          </tr>
        </table>
        </form>
        
      </div>
    </div>
    </div>
     	<%
		}else{}
		
		
		%>
	
        
        
        
        
        </div>
        
</div>
            
          </div>
        </div>
         
            </div>
            
          </div>
        </div>
        
      </div>
     
         
     
      <!-- Area Chart Example-->
      
          <!-- Card Columns Example Social Feed-->
          
            <!-- Example Social Card-->
            
            <!-- Example Social Card-->
           
          <!-- /Card Columns-->
        
      <!-- Example DataTables Card-->
      
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
  <%@ include file="navbar.jsp"%>
</body>

</html>
