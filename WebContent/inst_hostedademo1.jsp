<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
  
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
        <li class="breadcrumb-item active">List of Hosted a Demos</li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> List of Hosted a Demos</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Demo Name</th>
                  <th>Institute Name</th>
                  <th>Trainer Name</th>
                  <th>Trainer Experience</th>
                  <th> Date</th>
                  <th>Duration</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>Contact Person</th>
                  <th>No of Seats</th>
                  <th>Address</th>
                </tr>
              </thead>
              <tfoot>
                  </tfoot>
       <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>

<%



Connection con = DriverManager.getConnection(url,uname,upass);
	//Executing a query
	Statement st42= con.createStatement();
	ResultSet rs42=st42.executeQuery("select * from hostademo ");
%>

	     
	<%
    while (rs42.next()) 
    {
     %>

     
     
     <TR>
<TD><%=rs42.getString(1)%></TD>
<TD><%=rs42.getString(2)%></TD>
<TD><%=rs42.getString(3)%></TD>
<TD><%=rs42.getString(4)%></TD>
<TD><%=rs42.getString(5)%></TD>
<TD><%=rs42.getString(6)%></TD>
<TD><%=rs42.getString(7)%></TD>
<TD><%=rs42.getString(8)%></TD>
<TD><%=rs42.getString(9)%></TD>
<TD><%=rs42.getString(10)%></TD>
<TD><%=rs42.getString(11)%></TD>
<% } %>
     </TR>



<% 	
	
rs42.close();
st42.close();
con.close();	
	


%>
                
              </tbody>
            </table>
          </div>
        </div>
        
      </div>
    </div>	
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
               </tbody>         
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted"></div>
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
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
  </div>
</body>

</html>
    