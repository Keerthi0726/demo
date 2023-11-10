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
</script>
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
        <li class="breadcrumb-item active">Add a Trainer</li>
      </ol>
      <!-- Icon Cards-->
      <div class="alert"style="background-color:#41af28 ">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sucess!</strong> Trainer added Sucessfully...
</div>
      
     </div></div>
      
       
      
      <!-- Example DataTables Card-->
      
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
