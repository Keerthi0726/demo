 <!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>  Host a Demo</title>
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
 	 
 		if ( document.f1.location.value == "0" )
 	  { 
 		  alert ( "Please Select Demo Name !" );
 		  document.getElementById('location').focus();
 		  return false;
 	  }
 	  
 		if ( document.f1.location1.value == "0" )
 	 	  { 
 	 		  alert ( "Please Select Institute Name !" );
 	 		  document.getElementById('location').focus();
 	 		  return false;
 	 	  }
 	 	   
 	 

 		if ( document.f1.location3.value == "0" )
 	 	  { 
 	 		  alert ( "Please Select Trainer Name !" );
 	 		  document.getElementById('location3').focus();
 	 		  return false;
 	 	  }
 	 	  


 var v5=f1.date.value;
 if (v5=="")
 {
 alert ( "Please Enter Date !" );
 document.f1.date.focus();
 return false;
 }

 var v6=f1.duration.value;
 if (v6=="")
 {
 alert ( "Please Enter Duration !" );
 document.f1.duration.focus();
 return false;
 }
if(v6<="0")
	{
	alert("Please Enter Valid Duration In Hours !");
	document.f1.duration.focus();
	return false;
	}

var v7=f1.contactemail.value;
if (v7=="")
{
alert ( "Please Enter Email Id !" );
document.f1.duration.focus();
return false;
}
 var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

 if (!filter.test(f1.contactemail.value)) {
 alert('Please Provide  Valid Email Address !');
 document.f1.contactemail.focus();
 return false;
 }

 		

 var v8=f1.contactnumber.value;
 if(v8=="")
 	{
 	alert("Please Enter Phone Number !");
 	document.f1.contactnumber.focus();
 	return false;
 	}
 	
 var phoneno = /^\d+$/;  
 if(!v8.match(phoneno))  
       {  
 	alert("Please Enter Valid Phone Number !");
 	document.f1.contactnumber.focus();
     return false;  
       }	
 if(v8.length<10)
 	{
 	alert("Please Enter Valid Phone Number !");
 	document.f1.contactnumber.focus();
 	return false;
 	
 	}

 var v9=f1.contactperson.value;
 if (v9=="")
 {
 alert ( "Please Enter Contact Person !" );
 document.f1.contactperson.focus();
 return false;
 }
 if(v9.match(".*\\d+.*"))
 {
 alert("Please Enter Valid Name For Contact Person !");
 document.f1.contactperson.focus();
 return false;	
 }
 if(v9.match(/^[a-z]*$/))
 {
 alert ( " Contact Person's Name Should Start With An Uppercase Letter ! " );
 document.f1.contactperson.focus();
 return false;
 }

 	
 var v10=f1.noofseats.value;
 if (v10=="")
 {
 alert ( "Please Enter Number Of Seats !" );
 document.f1.noofseats.focus();
 return false;
 }
 if(v10<="0")
	{
	alert("Please Enter Valid Number Of Seats !");
	document.f1.noofseats.focus();
	return false;
	}


 var v11=f1.address.value;
 if (v11=="")
 {
 alert ( "Please Enter Address !" );
 document.f1.address.focus();
 return false;
 }
 if(v11.match(/^[a-z]*$/))
 {
 alert ( "Please Enter Address In Block Letters !" );
 document.f1.address.focus();
 return false;
 }

 else 
 	return true;
 }



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

var url="state1.jsp";

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

var url="city.jsp";

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
<%String uid=null;
uid=(String)session.getAttribute("pageid");
if(uid==null)
{
	 response.sendRedirect("login.jsp");


}%>


<%@ include file="instnavbar.jsp"%>
 
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="inst_admin.jsp">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Institute Profile</li>
      </ol>
      
      
       <div class="alert"style="background-color:#41af28 ">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sucess!</strong> Profile Updated Sucessfully...
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
