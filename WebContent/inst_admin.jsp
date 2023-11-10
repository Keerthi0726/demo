<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
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
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<% String uid=null;
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
        <li class="breadcrumb-item active">My Dashboard</li>
      </ol>
      <!-- Icon Cards-->
       <div class="row">
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-comments"></i>
              </div>
              <%@ page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@include file="dbcon.jsp"%>
              <%
            	  
	    
		//Creating DB connection
		Connection con31 = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st31= con31.createStatement();
		
		
		
		ResultSet rs31=st31.executeQuery("select * from hostademo where Uid='"+uid+"' ");
		rs31=st31.executeQuery("select count(*) from hostademo where Uid='"+uid+"' ");
		rs31.next();
		int rowcount31=rs31.getInt(1);
		%>
		
		
              <div class="mr-5">Total Demos:	<%out.println(rowcount31);%> </div>
              <%rs31.close();
st31.close();
con31.close(); %>
               <%  %>
         
            </div>
            <a class="card-footer text-white clearfix small z-1" href="inst_hostedademo.jsp">
              <span class="float-left">View Details</span>
              <span class="float-right">
             
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-warning o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-list"></i>
              </div>
              
              <%
            	 
	      
		//Creating DB connection
		Connection con32 = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st32= con32.createStatement();
		
		
		
		ResultSet rs32=st32.executeQuery("select * from listoftechnologies");
		rs32=st32.executeQuery("select count(*) from listoftechnologies");
		rs32.next();
		int rowcount32=rs32.getInt(1);
		%>
		
		
              <div class="mr-5">Total Technologies:	<%out.println(rowcount32);%> </div>
              <%rs32.close();
st32.close();
con32.close(); %>
               <% %>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="inst_addatechnology.jsp">
              <span class="float-left">View Details</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-success o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-user"></i>
              </div>
              
              <%  
            	  
	     
		Connection con33 = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st33= con33.createStatement();
		
		
		
		ResultSet rs33=st33.executeQuery("select * from trainerslist where Uid='"+uid+"' ");
		rs33=st33.executeQuery("select count(*) from trainerslist where Uid='"+uid+"' ");
		rs33.next();
		int rowcount33=rs33.getInt(1);
		%>
		
		
              <div class="mr-5">Total Trainers:	<%out.println(rowcount33);%> </div>
              <%rs33.close(); 
st33.close();
con33.close();%>
               <%  %>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="inst_listoftrainers.jsp">
              <span class="float-left">View Details</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div> 
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-danger o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-support"></i>
              </div>
    
              <%  
            	  
	     
		Connection con34 = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st34= con34.createStatement();
		
		
		
		ResultSet rs34=st34.executeQuery("select * from bookedusers where Uid='"+uid+"' ");
		rs34=st34.executeQuery("select count(*) from bookedusers where Uid='"+uid+"' ");
		rs34.next();
		int rowcount34=rs34.getInt(1);
		%>
		
		
              <div class="mr-5">Total Subscribed Demo: <%out.println(rowcount34);%> </div>
              <%rs34.close(); 
              st34.close();
              con34.close();%>
               <%  %>
             
            </div>
            <a class="card-footer text-white clearfix small z-1" href="inst_subscribeddemo.jsp">
              <span class="float-left">View Details</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div>
      </div>
      
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
