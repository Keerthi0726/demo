<!DOCTYPE html>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.SQLException"%>
<html lang="en">

<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 90%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 3px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
tr:nth-child(odd) {
    background-color: #dddddd;
}
</style>
 
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Admin</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <script language="javascript">
  var xmlHttp  
  var xmlHttp
  function showState(str){

  if (typeof XMLHttpRequest != "undefined"){

  xmlHttp= new XMLHttpRequest();

  }
  else if (window.ActiveXObject){

  xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");

  }
  if (xmlHttp==null){

  alert("Browser does not support XMLHTTP Request")

  return;
  } 

  var url="trainer.jsp";

  url +="?count=" +str;

  xmlHttp.onreadystatechange = stateChange;

  xmlHttp.open("GET", url, true);

  xmlHttp.send(null);

  }

  function stateChange(){   

  if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   

  document.getElementById("state").innerHTML=xmlHttp.responseText   

  }   
  }

  function showCity(str){

  if (typeof XMLHttpRequest != "undefined"){

    xmlHttp= new XMLHttpRequest();

    }
  else if (window.ActiveXObject){

    xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");

    }
  if (xmlHttp==null){

  alert("Browser does not support XMLHTTP Request")

  return;
  } 

  var url="tech.jsp";

  url +="?count=" +str;

  xmlHttp.onreadystatechange = stateChange1;

  xmlHttp.open("GET", url, true);

  xmlHttp.send(null);

  }
  function stateChange1(){   

  if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   

  document.getElementById("city").innerHTML=xmlHttp.responseText   

  }   
  }



  </script>  
   
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
 <%@include file="instnavbar.jsp"%>
 <%String uid=null;
uid=(String)session.getAttribute("pageid");
if(uid==null)
{
	 response.sendRedirect("login.jsp");


}%>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Host a Demo</li>
      </ol>
      
       <%@page import="java.sql.*"%>
            <%@page import="java.io.*"%>
            <%@page import="java.sql.DriverManager.*"%>
            <%@page import="java.sql.Connection.*"%>
<%@include file="dbcon.jsp"%>
      
   <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-area-chart"></i> Host a Demo</div>
      <div class="card-body">
       
       <div class="card-body">
        <form name="f1" action="hostademosucess.jsp" method="POST" onsubmit="return check();">
        
        <table width="100%" >
        <tr>
         <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Institute Name:</label>
            <%Connection con6 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st6=con6.createStatement();
           	 ResultSet rs6=st6.executeQuery("select * from newregistration where EmailId='"+uid+"'");
           	
           	while(rs6.next()){
           		%><input class="form-control" name="institutename"  type="text" value="<%=rs6.getString(4)%>" readonly>
            
            
           	<%}
           	 %></select>
           	 <% rs6.close();
st6.close();
con6.close(); 
             %>
          </div>
          </td>
           <td>
          <div class="form-group" >
            <label for="exampleInputPassword1">Trainer Name:</label>
            <%Connection con7 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st7=con7.createStatement();
           	 ResultSet rs7=st7.executeQuery("select * from trainerslist where uid='"+uid+"'");
           	 %><select class="form-control" name="trainername" onchange="showCity(this.value)" id="state">
           	 <option >--Please Select--</option>
           	 <%
           	while(rs7.next()){
           		%><option ><%=rs7.getString(2)%></option>
            
            
           	<%}
           	 %></select>
           	 <%  rs7.close();
st7.close();
con7.close();
             %>
            
          </div>
          </td>
        <td>
          <div class="form-group" >
            <label for="exampleInputEmail1">Demo Name:</label>
            
            
           
            <%  Connection con5 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st5=con5.createStatement();
           	 ResultSet rs5=st5.executeQuery("select * from listoftechnologies");
           	 %><select class="form-control" name="demoname" id="city">
           	 <%
           	while(rs5.next()){
           		%><option ><%=rs5.getString(2) %></option>
            
            
           	<%}
           	 %></select>
           	 <% 
             rs5.close();
st5.close();
con5.close();%>
            
          </div>
          </td>
         
          </tr>
          <tr>
         
           <td>
           <div class="form-group">
            <label for="exampleInputPassword1">Date:</label>
            <input class="form-control" name="date"  type="date" placeholder="Date">
          </div>
          </td>
          
          
          <td>
         <div class="form-group">
            <label for="exampleInputPassword1">Time:</label>
            <input class="form-control" name="time"  type="time" placeholder="Time">
          </div>
          </td>
          <td>
           <div class="form-group">
            <label for="exampleInputPassword1">Duration in Hours:</label>
            <input class="form-control" name="duration"  type="number" placeholder="Duration">
          </div>
          </td>
          </tr>
          <tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Contact Email:</label>
            <input class="form-control" name="contactemail"  type="text" placeholder="Contact Email">
          </div>
          </td>
          
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Contact Number:</label>
            <input class="form-control" name="contactnumber"  type="text" placeholder="Contact Number">
          </div>
          </td>
         
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Contact Person:</label>
            <input class="form-control" name="contactperson"  type="text" placeholder="Contact Person">
          </div>
          </td></tr><tr>
          
                <td>
          <div class="form-group">
            <label for="exampleInputPassword1">No of Seats:</label>
            <input class="form-control" name="noofseats"  type="number" placeholder="No of Seats">
          </div>
          </td>
          
          <td>
         <div class="form-group">
            <label for="exampleInputPassword1">Address:</label><br>
            
            <input class="form-control"  name="address" type="text" placeholder="Address" >
          </div>
          </td>
          <td>
           <div class="form-group">
            <label for="exampleInputPassword1">Trainer Experience:</label><br>
            
            <input class="form-control"  name="trainerexperience" type="number" placeholder="experience" >
          </div>
          
          </td>
          </tr>
          
          
          
          </table>
          <br>
         
          
          <input class="btn btn-primary btn-block" type="submit" value="Host"/>
        </form>
        
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
