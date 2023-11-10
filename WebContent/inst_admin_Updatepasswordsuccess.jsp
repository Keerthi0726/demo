<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Institute Admin Panel</title>
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
  <!-- Navigation--><%@ include file="instnavbar.jsp"%>
  
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="inst_admin.jsp">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Update Password</li>
      </ol>
      <!-- Password  successfully changed Example-->
      
      
      <div class="alert"style="background-color:#41af28 ">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sucess!</strong> Password Updated Sucessfully...
</div>
<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">UpdatePassword
     
</div>
      <div class="card-body">
          <form name="f1" action="updatapassword.jsp" method="POST" onsubmit="return check();">
          <div class="form-group">
          
            <label for="exampleInputEmail1">OldPassword</label>
             <input class="form-control" id="exampleInputEmail1" type="password" aria-describedby="emailHelp" placeholder="password" name="opassword" required>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">NewPassword</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password" name="npassword" required>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Confirm Password</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password" name="cpassword" required>
          </div>
          
         <input class="btn btn-primary btn-block" type="submit" value="Submit"/>
        </form>
        
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
 <script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
 <!-- Core plugin JavaScript-->
 <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
      
      
      
      
   
      
      
      
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





                