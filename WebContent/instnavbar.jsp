<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="inst_admin.jsp">Institute Admin</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="inst_admin.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        
        
		
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Profile">
          <a class="nav-link" href="profile.jsp">
            <i class="fa fa-user"></i>
            <span class="nav-link-text">Profile</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Demo Details">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Demo Details</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Host a Demo">
          <a class="nav-link" href="inst_hostademo.jsp">
            <i class="fa fa-server"></i>
            <span class="nav-link-text">Host a Demo</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Details of hosted Demo">
          <a class="nav-link" href="inst_hostedademo.jsp">
            <i class="fa fa-table nav-icon"></i>
            <span class="nav-link-text">Hosted Demo</span>
          </a>
        </li>
            
          </ul>
        </li>
        
        
        
        
        
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Trainer's">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-sitemap fa-fw nav-icon"></i>
            <span class="nav-link-text">Trainers</span>
          </a>
          
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="inst_listoftrainers.jsp">List of Trainers</a>
            </li>
            <li>
              <a href="inst_addatrainers.jsp">Add a Trainers</a>
            </li>
          </ul>
        </li>
        
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Details of hosted Demo">
          <a class="nav-link" href="inst_addatechnology.jsp">
            <i class="fa fa-table nav-icon"></i>
            <span class="nav-link-text">Technology Details</span>
          </a>
        </li>
        
        
        
        
        
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Subscribed for Demo">
          <a class="nav-link" href="inst_subscribeddemo.jsp">
            <i class="fa fa-envelope"></i>
            <span class="nav-link-text">Subscribed Demos </span>
          </a>
        </li>
        
        
       
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Update password">
          <a class="nav-link" href="inst_upadatepassword.jsp">
            <i class="fa fa-key"></i>
            <span class="nav-link-text">Update Password</span>
          </a>
        </li>
        
      
         
        
        
        
        
        
        
     
       
    
    
    
        <li class="nav-item" data-toggle="" data-placement="right" title="Link">
          <a class="" href="#">
            
            
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        
        
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-power-off"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  
  
  
  
  <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>&copy;2017 Demo . All Rights Reserved | Design by VBRS IT SOLUTIONS PVT LTD <a href="http://vbrsit.com/" target="_blank">VBRS IT SOLUTIONS PVT LTD</a> </p></small>
        </div>
      </div>
    </footer>
    
    
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    
    
    
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
  
  

</body>
</html>