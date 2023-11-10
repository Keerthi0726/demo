<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>  Add a Trainer</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <script language="javascript">
  function check()
  {
  var v3=f1.trainername.value;
if (v3=="")
{
alert ( "Please enter trainer name" );
document.f1.trainername.focus();
return false;
}
if(v3.match(/^[a-z]*$/))
{
alert ( "Please enter trainer name in block letters" );
document.f1.trainername.focus();
return false;
}
if(v3.match(".*\\d+.*"))
{
alert("Please enter valid name for trainer");
document.f1.contactperson.focus();
return false;	
}

var v4=f1.trainerexperience.value;
if (v4=="")
{
alert ( "Please enter trainer's experience" );
document.f1.trainerexperience.focus();
return false;
}
if(!v4.match(/^\d+/))
	{
	alert("please enter experience only in numbers");
	document.f1.trainerexperience.focus();
	return false;
	}
var v5=f1.coursename.value;
if (v5=="")
{
alert ( "Please enter course name" );
document.f1.coursename.focus();
return false;
}
if(v3.match(/^[a-z]*$/))
{
alert ( "Please enter course name in block letters" );
document.f1.coursename.focus();
return false;
}
else
	return true;
}
  var expanded = false;

  function showCheckboxes() {
    var checkboxes = document.getElementById("checkboxes");
    if (!expanded) {
      checkboxes.style.display = "block";
      expanded = true;
    } else {
      checkboxes.style.display = "none";
      expanded = false;
    }
  }
</script>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
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
.multiselect {
  width: 200px;
}

.selectBox {
  position: relative;
}

.selectBox select {
  width: 100%;
  font-weight: bold;
}

.overSelect {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
}

#checkboxes {
  display: none;
  border: 1px #dadada solid;
}

#checkboxes label {
  display: block;
}

#checkboxes label:hover {
  background-color: #1e90ff;
}</style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
 <%@ include file="navbar.jsp"%>
<%@ include file="dbcon.jsp"%>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Trainer`s</li>
        <li class="breadcrumb-item active">Add a Trainer</li>
      </ol>
      <!-- Icon Cards-->
      <div class="card-body">
      <h5><b><i>Trainer Details:</i></b></h5>
       <table>
  <tr>
  <td><form name="f1" action="addatrainerjsp.jsp" method="POST" onsubmit="return check();">
       <div class="form-group">
            <label for="exampleInputPassword1">Institute Name:</label>
            <%@ page import="java.sql.*"%>
            <%@page import="java.io.*"%>
            
            
            <%   
                 Connection con1 = DriverManager.getConnection(url,uname,upass);
           	 Statement st3=con1.createStatement();
           	 ResultSet rs3=st3.executeQuery("select * from newregistration");
           	 %><select class="form-control" name="institutename">
           	 <option >--Please Select--</option>
           	 <%
           	while(rs3.next()){
           		%><option ><%=rs3.getString(4)%></option>
            
            
           	<%}rs3.close();
                   st3.close();
con1.close();
                   
           	 %></select>
           	
          </div></td>
      
        
         <td> <div class="form-group">
            <label for="exampleInputEmail1">Trainer Name:</label>
            <input class="form-control"  name="trainername"  type="text"  placeholder="Trainer Name">
          </div></td><td>
          
          <div class="form-group">
            <label for="exampleInputPassword1">Trainer Experience in Years:</label>
            <input class="form-control" name="trainerexperience"  type="number" placeholder="Trainer Experience">
          </div></td></tr></table>
         
         
  
     <h5><b><i>Technologies:</i></b></h5>
    <table>
  <tr>
  <td> <div class="form-group">
      <!-- <label for="exampleInputPassword1">Technologies:</label><br> -->
      
      <%   Connection con2 = DriverManager.getConnection(url,uname,upass);
           	 Statement st4=con2.createStatement();
           	 ResultSet rs4=st4.executeQuery("select * from listoftechnologies");%>
     
       <% 	while(rs4.next()){
           		%> <input type="checkbox" name="tech" value="<%=rs4.getString(2) %>"><%=rs4.getString(2) %>&nbsp;
          
           	<%}


rs4.close();
st4.close();
con2.close();%>

    </div></td></tr></table>
     <h5><b><i>Contact Details:</i></b></h5>
     <table>
  <tr>
  <td>      <div class="form-group">
            <label for="exampleInputPassword1">Mail Id:</label>
            <input class="form-control" name="trainermail"  type="text" >
          </div></td><td>
          
          <div class="form-group">
            <label for="exampleInputPassword1">Contact Number:</label>
            <input class="form-control" name="trainercontact"  type="text" >
          </div></td>
          
          <td><div class="form-group">
            <label for="exampleInputPassword1">Alternate Contact Number:</label>
            <input class="form-control" name="traineraltercontact"  type="text" >
          </div></td></tr><tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Web:</label>
            <input class="form-control" name="trainerweb"  type="text">
          </div></td><td></td><td></td></tr></table>
  </div>

         
         
         
       
          
          <input class="btn btn-primary btn-block" type="submit" value="Submit"/>
          
        </form>
        
      </div>
      
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
</body>

</html>
