<!DOCTYPE html>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.SQLException"%>
<html lang="en">

<head>
  <meta charset="utf-8">
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
  <script languauge="javascript">
  function check();
  {
  var v2=f1.institutename.value;
if (v2=="")
{
alert ( "Please enter institue name" );
document.f1.institutename.focus();
return false;
}
if(v2.match(/^[a-z]*$/))
{
alert ( "Please enter institute name in block letters" );
document.f1.institutename.focus();
return false;
}


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

var v5=f1.date.value;
if (v5=="")
{
alert ( "Please enter date" );
document.f1.date.focus();
return false;
}

var v6=f1.duration.value;
if (v6=="")
{
alert ( "Please enter duration" );
document.f1.duration.focus();
return false;
}



var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

if (!filter.test(f1.contactemail.value)) {
alert('Please provide a valid email address');
document.f1.contactemail.focus();
return false;
}

		
var v8=f1.contactnumber.value;
var phoneNum = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
if(!v8.match(phoneNum))
{ 
	alert("Please enter valid contact number");
	document.f1.contactnumber.focus();
    return false;
}


var v9=f1.contactperson.value;
if (v9=="")
{
alert ( "Please enter contact person" );
document.f1.contactperson.focus();
return false;
}
if(v9.match(".*\\d+.*"))
{
alert("Please enter valid name for contact person");
document.f1.contactperson.focus();
return false;	
}
if(!v9.match(/^[A-Z]*$/))
{
alert ( "Please enter contact person name in block letters" );
document.f1.contactperson.focus();
return false;
}

	
var v10=f1.noofseats.value;
if (v10=="")
{
alert ( "Please enter number of seats" );
document.f1.noofseats.focus();
return false;
}


var v11=f1.address.value;
if (v11=="")
{
alert ( "Please enter address" );
document.f1.address.focus();
return false;
}
if(v11.match(/^[a-z]*$/))
{
alert ( "Please enter address in block letters" );
document.f1.address.focus();
return false;
}

else 
	return true;
}</script>
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
        <li class="breadcrumb-item active">Host a Demo</li>
      </ol>
       <div class="alert"style="background-color:#41af28 ">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sucess!</strong> Demo Hosted Sucessfully...
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
