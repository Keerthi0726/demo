<!DOCTYPE html>
<html lang="en">



<body >
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="home.jsp">Admin</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="home.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Update password">
          <a class="nav-link" href="updatepassword.jsp">
            <i class="fa fa-check-square-o nav_icon"></i>
            <span class="nav-link-text">Update Password</span>
          </a>
        </li>
        
		
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Host a Demo">
          <a class="nav-link" href="hostademo.jsp">
            <i class="pull-left fa fa-building-o"></i>
            <span class="nav-link-text">Host a Demo</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Hosted Demo Details">
          <a class="nav-link" href="hosteddemodetails.jsp">
            <i class="fa fa-table nav_icon"></i>
            <span class="nav-link-text">Hosted Demo Details</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Add a Technology">
          <a class="nav-link" href="addatechnology.jsp">
            <i class="pull-left fa fa-building-o"></i>
            <span class="nav-link-text">Add a Technology</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="List of Technologies">
          <a class="nav-link" href="listoftechnologies.jsp">
            <i class="fa fa-bars"></i>
            <span class="nav-link-text">List of Technologies</span>
          </a>
        </li>
        
        
          
        
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Institute`s">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-university"></i>
            <span class="nav-link-text">Institute`s</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            
            <li>
              <a href="registerainstitute.jsp">Register a Institute</a>
            </li>
            <li>
              <a href="listofinstitutes.jsp">List of Institutes </a>
            </li>
           
          </ul>
        </li>
       <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Trainer`s">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-sitemap"></i>
            <span class="nav-link-text">Trainer`s</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseMulti">
            <li>
              <a href="addatrainer.jsp">Add a Trainer</a>
            </li>
            <li>
              <a href="trainerslist.jsp">Trainers List</a>
            </li>
           
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Booked Users">
          <a class="nav-link" href="bookedusers.jsp">
            <i class="fa fa-ticket"></i>
            <span class="nav-link-text">Booked Users</span>
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
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>



<footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>2017 Where2Demo . All Rights Reserved | Design by VBRS IT SOLUTIONS PVT LTD </small>
        </div>
      </div>
    </footer>
</body>

</html>
