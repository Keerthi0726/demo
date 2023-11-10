<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Update Password</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <script languauge="javascript">
function check()
{
 var v1=f1.opassword.value;
 if(v1=="")
{
alert("Please enter your old password");
document.f1.opassword.focus();
return false;
}

var v2=f1.npassword.value;
if(v2=="")
{
alert("Please enter your new password");
document.f1.npassword.focus();
return false;
}
var paswd=  /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;  
if(!v2.match(paswd))   
{   
alert("Password must contain atleast 8 characters,one number and one special character");  
document.f1.npassword.focus();
return false;
}
var v3=f1.cpassword.value;
if(v3=="")
{
 alert("Please enter confirm password");
 document.f1.cpassword.focus();
 return false;  
}
if(v2!=v3)
{
 alert("your password and confirm password doesn't match");
 document.f1.cpassword.focus();
 return false;
}
else

 return true;
}

</script>

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
        <li class="breadcrumb-item active">Update Password</li>
      </ol>
      <!-- Area Chart Example-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-area-chart"></i> Update Password</div>
       
       <div class="card-body">
        <form name="f1" action="updatepasswordsucess.jsp" method="POST" onsubmit="return check();">
          <div class="form-group">
            <label for="exampleInputEmail1">Old Password</label>
            <input class="form-control"  name="opassword"  type="text" placeholder="Old Password" required>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">New Password</label>
            <input class="form-control" name="npassword"  type="password" placeholder="New Password" required>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Confirm Password</label>
            <input class="form-control" name="cpassword"  type="password" placeholder="Confirm Password" required>
          </div>
          
          <input class="btn btn-primary btn-block" type="submit" value="Submit"/>
          
        </form>
        
      
          
          
        
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
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>
