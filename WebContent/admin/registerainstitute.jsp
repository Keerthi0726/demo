<!DOCTYPE html>
<html lang="en">

<head>
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
</style>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Register a Institute</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
   <script type="text/javascript">
  $(document).ready(function(){
	    $('#purpose').on('change', function() {
	      if ( this.value == 'Institute')
	      //.....................^.......
	      {
	        $("#business").show();
	        $("#business1").show();
	        $("#business2").show();
	       
	      }
	      else
	      {
	        $("#business").hide();
	        $("#business1").hide();
	       
	      }
	      if ( this.value == 'Individual')
	      {
		        $("#business2").show();
		        
		      }
	    });
	});
  </script> 
  
  <script type="text/javascript">
  $(document).ready(function(){
	    $('#purpose1').on('change', function() {
	      if ( this.value == 'pc')
	      //.....................^.......
	      {
	        $("#business0").show();
	        $("#business11").show();
	        $("#business22").show();

	        $("#business33").show();
	        $("#business44").show();
	        
	       
	      }
	      else
	      {
	        $("#business").hide();
	        $("#business1").hide();
	       
	      }
	      if ( this.value == 'sc')
	      {
	    	  $("#business0").show();
		        $("#business11").show();
		        $("#business22").show();

		        $("#business33").show();
		        $("#business44").show();
		        
		      }
	    });
	});
  </script> 
  
  
    <script>
function getinput()
{
var name="<table><tr><td><br><label for='exampleInputEmail1'>Branch Address:</label><br><textarea rows='3' cols='70' name='mainbranchaddress' placeholder='Address' required/></td></tr></table>";
//var area=" <table><tr><td><label for='exampleInputEmail1'>Area:</label><br><input class='form-control'  name='area'  type='text'  placeholder='Area' required/></td><td><label for='exampleInputEmail1'>City:</label><input class='form-control'  name='city'  type='text'  placeholder='Area' required/></td></tr><tr><td> <label for='exampleInputEmail1'>State:</label><br><input class='form-control'  name='state'  type='text'  placeholder='Area' required/></td><td><label for='exampleInputEmail1'>PinCode:</label><br><input class='form-control'  name='pincode'  type='text'  placeholder='Area' required/></td></tr></table>";

$("#inputs").append(name,area);
}
</script> 
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<%-- <% String uid=null;
uid=(String)session.getAttribute("pageid");
if(uid==null)
{
	 response.sendRedirect("index.jsp");


}%> --%>
  <!-- Navigation-->
  <%@ include file="navbar.jsp"%>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="listoftechnologies.jsp">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Institute's</li>
        <li class="breadcrumb-item active">Register a Institute</li>
      </ol>
      <!-- registration form-->
      
    <div class="card-header">
          <i class="fa fa-area-chart"></i> Register a Institute</div>
       
       <div class="card-body">
        <form action="regsucess.jsp" method="POST">
        <h5><i><b>Personal Details:</b></i></h5>
          <table>
  <tr>
  <td><div class="form-group">
            <label for="exampleInputEmail1">Type of Training:</label>
            <select class="form-control" id='purpose' name="typeofinstitute" required>
            <option value="0" >--Please Select--</option>
            <option value="Institute">Institiute</option>
            <option value="Individual">Individual</option>
            </select>
                     </div></td>
                     <td><div class="form-group" id='business'>
            <label for="exampleInputPassword1">Institute Owner Name:</label>
            <input class="form-control" name="instituteownername"  type="text" placeholder="Institute Owner Name" >
          </div></td>
   
  </tr>
  <tr><td><!-- <div class="form-group" id='business1'>
            <label for="exampleInputPassword1">Institute/Trainer Name:</label>
            <input class="form-control" name="institutetrainername"  type="text" placeholder="Institute/Trainer Name" required>
          </div> --></td>
          <td> <div class="form-group" id='business2' style='display:none;'>
            <label for="exampleInputPassword1">Institute/Trainer Name:</label>
            <input class="form-control" name="institutetrainername"  type="text"  required>
          </div></td></tr></table>
          
          
          
            
          
         <h5><i><b>Contact Details:</b></i></h5>
        <table>
  <tr>
  <td>
         <div class="form-group">
            <label for="exampleInputEmail1">Email Id:</label>
            <input class="form-control"  name="emailid"  type="text" aria-describedby="emailHelp" placeholder="Email Id" required>
          </div></td>
          <td><div class="form-group">
            <label for="exampleInputPassword1">Password:</label>
            <input class="form-control" name="password"  type="password" placeholder="Password" required>
          </div></td></tr> <tr>
  <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Confirm Password:</label>
            <input class="form-control" name="confirmpassword"  type="password" placeholder="Confirm Password" required>
          </div></td><td>
          <div class="form-group">
            <label for="exampleInputPassword1">Phone:</label>
            <input class="form-control" name="phone"  type="text" placeholder="Phone" required>
          </div></td></tr></table>
          
          <h5><i><b>Contact Person Details:</b></i></u></h5>
            <table>
  <tr>
  <td><div class="form-group">
            <label for="exampleInputEmail1">Contact Person:</label>
            <select class="form-control" id='purpose1' required>
            <option value="0" >--Select Contact Person--</option>
            <option value="pc">Primary Contact</option>
            <option value="sc">Secondary Contact</option>
            </select>
                     </div></td>
                     
                  
  <td><div class="form-group" id='business0' style="display:none;">
            <label for="exampleInputPassword1">Personal Email:</label>
            <input class="form-control" name="permail"  type="text" placeholder="Personal mail" required>
          </div></td></tr><tr><td>
          <div class="form-group" id='business11' style="display:none;">
            <label for="exampleInputPassword1">Offical Email:</label>
            <input class="form-control" name="offmail" placeholder="Offical mail" type="text" placeholder="Institute/Trainer Name" required>
          </div></td><td>
            <div class="form-group" id='business22' style='display:none;' style="display:none;">
            <label for="exampleInputPassword1">Mobile No</label>
            <input class="form-control" name="mobile" placeholder="Mobile No" type="text"  required>
          </div></td></tr><tr>
           <td><div class="form-group" id='business33' style='display:none;' style="display:none;">
            <label for="exampleInputPassword1">Alternate Mobile</label>
            <input class="form-control" name="altermobile" placeholder="" type="text"  required>
          </div></td><td>
           <div class="form-group" id='business44' style='display:none;' style="display:none;">
            <label for="exampleInputPassword1">URL:</label>
            <input class="form-control" name="urladdress"  type="text"  required>
          </div></td></tr></table>
           <h5><i><b>Address Details:</b></i></h5>
         
   
  
   <div id="inputs"> <table><tr><td>
           <label for="exampleInputEmail1"><b>Main Branch Address:</b></label><br>
           <textarea rows="3" cols="50" name="mainbranchaddress" placeholder="Address" required></textarea></td>
           <td> <label for="exampleInputEmail1"><b>Another Branch Address:</b></label><br>
           <textarea rows="3" cols="50" name="anotherbranchaddress" placeholder="BranchAddress" required></textarea></td></tr>
          
           <tr><td> 
          <label for="exampleInputEmail1">Area:</label>
          <input class="form-control"  name="area"  type="text"  placeholder="Area" required></td>
          <td> 
          <label for="exampleInputEmail1">Branch Area:</label>
          <input class="form-control"  name="brancharea"  type="text"  placeholder="branchArea" ></td>
          <td></tr>
          <tr><td>
          <label for="exampleInputEmail1">City:</label><br>
          <input class="form-control"  name="city"  type="text"  placeholder="City" required></td>
          <td>
          <label for="exampleInputEmail1">Branch City:</label><br>
          <input class="form-control"  name="branchcity"  type="text"  placeholder="BranchCity" ></td>
          </tr><tr><td>
           <label for="exampleInputEmail1">State:</label><br>
          <input class="form-control"  name="state"  type="text"  placeholder="State" required></td>
          <td>
           <label for="exampleInputEmail1">Branch State:</label><br>
          <input class="form-control"  name="branchstate"  type="text"  placeholder="BranchState" ></td></tr><tr>
          <td>
          <label for="exampleInputEmail1">PinCode:</label><br>
          <input class="form-control"  name="pincode"  type="text"  placeholder="PinCode"required></td>
          <td>
          <label for="exampleInputEmail1">Branch PinCode:</label><br>
          <input class="form-control"  name="branchpincode"  type="text"  placeholder="BranchPinCode"></td>
          </tr>
          <br>
        
          </table></div><br><button onclick="getinput()">Add Another Branch</button><br>
          
         <br><input class="btn btn-primary btn-block" type="submit" value="Register"/>
        </form>
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
              <span aria-hidden="true">Ã</span>
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
