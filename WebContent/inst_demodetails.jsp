<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title> Institute Admin</title>
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

</script>
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
          <a href="inst_admin.jsp">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Update Demo Details</li>
      </ol>
      <!-- Icon Cards-->
      
      
       <%@ page import ="java.sql.*" %>
          <%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>
        <%String demo_id=(String)request.getParameter("DemoId"); 
        
       Connection con = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st35= con.createStatement();
		
		
		
		ResultSet rs35=st35.executeQuery("select * from hostademo where DemoId='"+demo_id+"'");
		if(rs35.next()){%>
      
      
      
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-area-chart"></i> Update Demo Details</div>
      <div class="card-body">
       
       <div class="card-body">
        <form name="f1" action="updatedemocode.jsp" method="POST" onsubmit="return check();">
        
        <table width="100%" >
        <tr>
        <td>
          <div class="form-group">
            <label for="exampleInputEmail1">Demo Id:</label><br>
            <input class="form-control" name="demoid"  type="text" value="<%=rs35.getString(1)%>" readonly >
            
            
            
            
          </div>
          </td>
        <td>
          <div class="form-group">
            <label for="exampleInputEmail1">Demo Name:</label><br>
            <% Connection con1 = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st36= con1.createStatement();
		
		
		
		ResultSet rs36=st36.executeQuery("select * from listoftechnologies");%>
		<select class="form-control" name="demoname" id="location" >
           	 
           	 <%
           	while(rs36.next()){
           		%><option ><%=rs36.getString(2) %></option>
            
            
           	<%}rs36.close();
st36.close();
con1.close();
           	%>
           
            
         </select>   
            
            
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Hosted Institute Email:</label>
            <input class="form-control" name="uid"  type="text" value="<%=rs35.getString(14)%>" readonly>
          </div>
          </td>
           
          </tr>
          <tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Institute Name:</label>
            <input class="form-control" name="institutename"  type="text" value="<%=rs35.getString(3)%>" readonly>
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Trainer Name:</label>            
             <%
            
				String name=rs35.getString(4);
           	 Connection con2 = DriverManager.getConnection(url,uname,upass);
           	PreparedStatement pst37=con2.prepareStatement("select * from trainerslist where uid=? and TrainerName!=?");
        	
        	pst37.setString(1,uid);
        	pst37.setString(2,name);
        	ResultSet rs37=pst37.executeQuery();
        %>
           	 
           	 <select class="form-control" name='trainername' required onchange="showState(this.value)" id="location3"">
           	 <option value="<%=rs35.getString(4) %>" ><%=rs35.getString(4) %></option>
           	 <%
           	while(rs37.next()){
           		%><option value="<%=rs37.getString(2)%>"><%=rs37.getString(2) %></option>
            
            
           	<%}rs37.close();
pst37.close();
con2.close();
           	 %></select>
           	 
          </div>
          </td>
          <td>
          <div class="form-group" id='state'>
            <label for="exampleInputPassword1">Trainer Experience in Years:</label>
            <input class="form-control" name="trainerexperience"  type="number" value="<%=rs35.getString(5)%>" required>
          </div>
          </td>
          
          
          </tr>
          <tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Date:</label>
            <input class="form-control" name="date"  type="date" value="<%=rs35.getString(6)%>"required>
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Time:</label>
            <input class="form-control" name="time"  type="time" value="<%=rs35.getString(7)%>" required>
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Duration in Hours:</label>
            <input class="form-control" name="duration"  type="number" value="<%=rs35.getString(8)%>" required>
          </div>
          </td>
          </tr>
          <tr>
          
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Contact Email:</label>
            <input class="form-control" name="contactemail"  type="text" value="<%=rs35.getString(9)%>" required>
          </div>
          </td>
          
          
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Contact Number:</label>
            <input class="form-control" name="contactnumber"  type="text" value="<%=rs35.getString(10)%>" required>
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Contact Person:</label>
            <input class="form-control" name="contactperson"  type="text" value="<%=rs35.getString(11)%>" required>
          </div>
          </td>
          </tr>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">No of Seats:</label>
            <input class="form-control" name="noofseats"  type="number" value="<%=rs35.getString(12)%>" required>
          </div>
          </td>
          <td>
          <div class="form-group">
            <label for="exampleInputPassword1">Address:</label><br>
            
            <input class="form-control"  name="address" type="text" value="<%=rs35.getString(13)%>" required>
          </div>
          </td>
          </table>
         <table>
          <tr>
          <td>
          <input class="btn btn-primary btn-block" type="submit" value="Update"/>
          </td>
          <td>
          <a class="btn btn-primary btn-block" href="inst_hostedademo.jsp" type="submit">Cancel</a>
          </td>
          </tr>
        </table>
        </form>
        
      </div>
    </div>
    </div>
    <%
		rs35.close();
st35.close();
con.close();
}else{}
		
		
		%>
      
      
      <!--  
		 <div class="col-md-4">	
			      <div class="cal1 cal_2"><div class="clndr"><div class="clndr-controls"><div class="clndr-control-button"><p class="clndr-previous-button">previous</p></div><div class="month">July 2015</div><div class="clndr-control-button rightalign"><p class="clndr-next-button">next</p></div></div><table class="clndr-table" border="0" cellspacing="0" cellpadding="0"><thead><tr class="header-days"><td class="header-day">S</td><td class="header-day">M</td><td class="header-day">T</td><td class="header-day">W</td><td class="header-day">T</td><td class="header-day">F</td><td class="header-day">S</td></tr></thead><tbody><tr><td class="day adjacent-month last-month calendar-day-2015-06-28"><div class="day-contents">28</div></td><td class="day adjacent-month last-month calendar-day-2015-06-29"><div class="day-contents">29</div></td><td class="day adjacent-month last-month calendar-day-2015-06-30"><div class="day-contents">30</div></td><td class="day calendar-day-2015-07-01"><div class="day-contents">1</div></td><td class="day calendar-day-2015-07-02"><div class="day-contents">2</div></td><td class="day calendar-day-2015-07-03"><div class="day-contents">3</div></td><td class="day calendar-day-2015-07-04"><div class="day-contents">4</div></td></tr><tr><td class="day calendar-day-2015-07-05"><div class="day-contents">5</div></td><td class="day calendar-day-2015-07-06"><div class="day-contents">6</div></td><td class="day calendar-day-2015-07-07"><div class="day-contents">7</div></td><td class="day calendar-day-2015-07-08"><div class="day-contents">8</div></td><td class="day calendar-day-2015-07-09"><div class="day-contents">9</div></td><td class="day calendar-day-2015-07-10"><div class="day-contents">10</div></td><td class="day calendar-day-2015-07-11"><div class="day-contents">11</div></td></tr><tr><td class="day calendar-day-2015-07-12"><div class="day-contents">12</div></td><td class="day calendar-day-2015-07-13"><div class="day-contents">13</div></td><td class="day calendar-day-2015-07-14"><div class="day-contents">14</div></td><td class="day calendar-day-2015-07-15"><div class="day-contents">15</div></td><td class="day calendar-day-2015-07-16"><div class="day-contents">16</div></td><td class="day calendar-day-2015-07-17"><div class="day-contents">17</div></td><td class="day calendar-day-2015-07-18"><div class="day-contents">18</div></td></tr><tr><td class="day calendar-day-2015-07-19"><div class="day-contents">19</div></td><td class="day calendar-day-2015-07-20"><div class="day-contents">20</div></td><td class="day calendar-day-2015-07-21"><div class="day-contents">21</div></td><td class="day calendar-day-2015-07-22"><div class="day-contents">22</div></td><td class="day calendar-day-2015-07-23"><div class="day-contents">23</div></td><td class="day calendar-day-2015-07-24"><div class="day-contents">24</div></td><td class="day calendar-day-2015-07-25"><div class="day-contents">25</div></td></tr><tr><td class="day calendar-day-2015-07-26"><div class="day-contents">26</div></td><td class="day calendar-day-2015-07-27"><div class="day-contents">27</div></td><td class="day calendar-day-2015-07-28"><div class="day-contents">28</div></td><td class="day calendar-day-2015-07-29"><div class="day-contents">29</div></td><td class="day calendar-day-2015-07-30"><div class="day-contents">30</div></td><td class="day calendar-day-2015-07-31"><div class="day-contents">31</div></td><td class="day adjacent-month next-month calendar-day-2015-08-01"><div class="day-contents">1</div></td></tr></tbody></table></div></div>
			    </div>
	        	<div class="clearfix"> </div>
	        </div>
	      	  
		    <!----Calender -------->
				
			<link rel="stylesheet" href="css/clndr.css" type="text/css" />
				<script src="js/underscore-min.js" type="text/javascript"></script>
				<script src= "js/moment-2.2.1.js" type="text/javascript"></script>
				<script src="js/clndr.js" type="text/javascript"></script>
				<script src="js/site.js" type="text/javascript"></script>
		    <!----End Calender -------  >
		    -->
         
    
    
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
