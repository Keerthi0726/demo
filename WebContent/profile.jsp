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
<% String uid=null;
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
      
      
      
   <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-server"></i> Institute Profile</div>
      <div class="card-body">
       
       <div class="card-body">
        <form name="f1" action="inst_profileupdate.jsp" method="POST" onsubmit="return check();">
        
        <table width="100%" >
        <tr>
        <td>
          <div class="form-group">
            <label for="exampleInputEmail1">Type Of Trainer:</label>
            <%@page import="java.sql.*"%>
            <%@page import="java.io.*"%>
            <%@page import="java.sql.DriverManager.*"%>
            <%@page import="java.sql.Connection.*"%>
<%@ include file="dbcon.jsp"%>
            <%
            	
           	 Connection con = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st53=con.createStatement();
           	 ResultSet rs53=st53.executeQuery("select * from newregistration where EmailId='"+uid+"'");
           	 %>
           	 <%
           	if(rs53.next()){
           		%><input class="form-control" name="TypeofTrainer"  type="text" value="<%=rs53.getString(1)%>" readonly>
            
            
           	<%}else{}
           	 %>
           	 <% rs53.close();
st53.close();
con.close();
            %>
          </div>
          </td>
         
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Institute Owner Name:</label>
            <%
            	Connection con1 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st54=con1.createStatement();
           	 ResultSet rs54=st54.executeQuery("select * from newregistration where EmailId='"+uid+"'");
           	 %>
           	 <%
           	if(rs54.next()){
           		%><input class="form-control" name="instituteownername"  type="text" value="<%=rs54.getString(3)%>" readonly>
            
            
           	<%}else{}
           	 %>
           	 <% rs54.close();
st54.close();
con1.close();
             %>
          </div>
          </td>
          </tr>
          <tr>
          <td>
            <div class="form-group">
            <label for="exampleInputPassword1">Institute Name:</label>
            <%Connection con2 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st55=con2.createStatement();
           	 ResultSet rs55=st55.executeQuery("select * from newregistration where EmailId='"+uid+"'");
           	 %>
           	 <%
           	if(rs55.next()){
           		%><input class="form-control" name="institutetrainername"  type="text" value="<%=rs55.getString(4)%>" readonly >
            <%}else{}
           	 %>
           	 <%rs55.close();
st55.close();
con2.close(); 
             %>
          </div>
          </td>
         
          <td>
          <div class="form-group" id='state'>
            <label for="exampleInputPassword1">Institute Email:</label>
           <%Connection con3 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st56=con3.createStatement();
           	 ResultSet rs56=st56.executeQuery("select * from newregistration where EmailId='"+uid+"'");
           	 %>
           	 <%
           	if(rs56.next()){
           		%><input class="form-control" name="emailid"  type="text" value="<%=rs56.getString(5)%>" readonly>
            
            
           	<%}else{}
           	 %>
           	 <% rs56.close();
st56.close();
con3.close();
            %>
          </div>
          </td>
          </tr>
          <tr>
          
          
          
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Password:</label>
           <%Connection con4 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st57=con4.createStatement();
           	 ResultSet rs57=st57.executeQuery("select * from newregistration where EmailId='"+uid+"'");
           	 %>
           	 <%
           	if(rs57.next()){
           		%><input class="form-control" name="password"  type="text" value="<%=rs57.getString(6)%>" readonly>
            
            
           	<%}else{}
           	 %>
           	 <% rs57.close();
st57.close();
con4.close();
             %>
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Institute Contact No:</label>
            <%Connection con5 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st58=con5.createStatement();
           	 ResultSet rs58=st58.executeQuery("select * from newregistration where EmailId='"+uid+"'");
           	 %>
           	 <%
           	if(rs58.next()){
           		%><input class="form-control" name="phone"  type="text" value="<%=rs58.getString(7)%>" readonly>
            
            
           	<%}else{}
           	 %>
           	 <% rs58.close();
st58.close();
con5.close();
            %>
          </div>
          </td>
          </tr>
          <tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Address:</label>
             <%Connection con6 = (Connection)DriverManager.getConnection(url,uname,upass);
           	 Statement st59=con6.createStatement();
           	 ResultSet rs59=st59.executeQuery("select * from newregistration where EmailId='"+uid+"'");
           	 %>
           	 <%
           	if(rs59.next()){
           		%><input class="form-control" name="mainbranchaddress"  type="text" value="<%=rs59.getString(8)%>">
            
            
           	<%}else{}
           	 %>
           	 <%rs59.close();
                   st59.close();
                   con6.close(); 
            %>
          </div>
          </td>
          
         
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Address Branch1:</label>
             <%Connection con7 = (Connection)DriverManager.getConnection(url,uname,upass);
        	 Statement st=con7.createStatement();
           	 ResultSet rs=st.executeQuery("select * from addressupdate where InstituteEmail='"+uid+"'");
           	 %>
           	 <%
           	if(rs.next()){
           		if(rs.getString(3)==null||rs.getString(3).isEmpty()){
           		%><input class="form-control"  name="BranchAddress1"  type="text" placeholder="BranchAddress1">
             <%}else{%>
             <input class="form-control"  name="BranchAddress1"  type="text" value="<%=rs.getString(3)%>">
            	 
             <%} %></div>
          </td>
           </tr>
          <tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Address Branch2:</label>
           <% if(rs.getString(4)==null||rs.getString(4).isEmpty()){
          		%><input class="form-control"  name="BranchAddress2"  type="text" placeholder="BranchAddress2">
            <%}else{%>
            <input class="form-control"  name="BranchAddress2"  type="text" value="<%=rs.getString(4)%>">
             <%} %>
            
          </div>
          </td>
          
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Address Branch3:</label>
          <% if(rs.getString(5)==null||rs.getString(5).isEmpty()){
         		%><input class="form-control"  name="BranchAddress3"  type="text" placeholder="BranchAddress3">
           <%}else{%>
           <input class="form-control"  name="BranchAddress3"  type="text" value="<%=rs.getString(5)%>">
             <%} %>
          </div>
          </td>
          </tr>
          <tr>
          
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Address Branch4:</label>
            <% if(rs.getString(6)==null||rs.getString(6).isEmpty()){
           		%><input class="form-control"  name="BranchAddress4"  type="text" placeholder="BranchAddress4">
             <%}else{%>
             <input class="form-control"  name="BranchAddress4"  type="text" value="<%=rs.getString(6)%>">
             <%} %>
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Address Branch5:</label><br>
            
          <% if(rs.getString(7)==null||rs.getString(7).isEmpty()){
         		%><input class="form-control"  name="BranchAddress5"  type="text" placeholder="BranchAddress5">
           <%}else{%>
           <input class="form-control"  name="BranchAddress5"  type="text" value="<%=rs.getString(7)%>">
             <%} %>
          </div>
          </td>
          </tr>
            
           	<%}else{
           		
           	}rs.close();
st.close();
con7.close();
            %>
            
          
          
          
          
          
          
          </table>
          
          
         
          
          <input class="btn btn-primary btn-block" type="submit" value="UpDate"/>
        </form>
        
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
