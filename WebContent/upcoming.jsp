<!--
Author: W3layouts
Author URL: www.vbrsit.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Where2Demo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="keywords" content="Bio Farm Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap1.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style1.css" type="text/css" rel="stylesheet" media="all">   
<link href="css/font-awesome1.css" rel="stylesheet"> <!-- font-awesome icons --> 
<!-- //Custom Theme files --> 
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>  
<!-- //js -->
<!-- web-fonts -->    
<link href="//fonts.googleapis.com/css?family=Pinyon+Script" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body> 
	<!-- header-top start here -->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">
				<div class="col-sm-8 logo">				
					<h1><a  href="index.jsp">Where2Demo</a></h1>
				</div>
				<div class="col-sm-4 top-social"> 
					<div class="social-wthree-icons bnragile-icons">
						<ul>
							 <h4><a href="login.jsp"><b>Login</b></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="inst_register.jsp"><b>Register</b></a></h4>
						</ul>
						<div class="clearfix"> </div>
					</div>   
				</div> 
			  <div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- header-top end here -->
	<!-- header start here --> 
	<div class="header w3l w3header">  
		<div class="container">
			<nav class="navbar navbar-inverse">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>			              
				</div> 
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> 
					<ul class="nav navbar-nav ">
						<li><a href="index.jsp" class="active">Home</a></li>
						<li><a href="about.jsp">About</a></li> 
						<li><a href="ongoing.jsp">Ongoing</a></li>
						<li><a href="upcoming.jsp">Upcoming</a></li>
						<li><a href="gallery.jsp">Gallery</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
					</ul> 
					<div class="head-search">
						<form action="#" method="post">
							<input type="text" placeholder="Search..." name="Search..." required="">
							<input type="submit" value="">
						</form>
					</div>
					<div class="clearfix"> </div>	
				</div>  
			</nav> 
		</div>
		<div class="clearfix"> </div> 
	</div>
	<!-- header end here -->  
	<!-- banner  start -->
	<div class="banner jarallax about-w3banner">
		<!-- banner-w3ltext -->
		<div class="banner-w3ltext">   
			<h2>Upcoming Demo's</h2> 
		</div> 
		<!-- //banner-w3ltext -->  
	</div>
	<!-- //banner  start --> 
	<!-- about -->
	<div class="w3-guides" id="guide">
		<div class="container">
			
			<div class="guide-grids">
			<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>

<%


Connection con = DriverManager.getConnection(url,uname,upass);

	//Executing a query
	Statement st63= con.createStatement();
	
	ResultSet rss63=st63.executeQuery("select * from hostademo where date>curdate()");
if(rss63.next()==true){
	
	
	ResultSet rs63=st63.executeQuery("select * from hostademo where date>curdate()");
	
	

    while(rs63.next()) 
    {
     %>
				
				<div class="col-md-3  "><div class="demos">
					<!--  <img src="images/g2.jpg" alt="guide2" class="img-responsive">-->
					<h4 class="designation1"><b><%=rs63.getString(2)%></b></h4>
					 <h4 class="designation2"><b><%=rs63.getString(3)%></b></h4>
					<h5 class="designation"><i class="fa fa-calendar"></i><b><%=rs63.getString(6) %></b> ||<i class="fa fa-clock-o"></i> <b><%=rs63.getString(7)%></b></h5>
					
					<p><b><%=rs63.getString(13)%></b></p>
					
					
					<div class="social-wthree-icons bnragile-icons">
							<ul>
								<div class="but_list w3layouts">
					<h4>
						<a class="label label-view" href="Viewandbook.jsp?DemoId=<%=rs63.getString(1)%>">View & Book</a>
						</h4></div>
								
							</ul>
							<div class="clearfix"> </div>
						</div>
						
				</div>
				
				
				
				<% }rs63.close();}else{%><h4>--No Demos to Display--</h4><%} %>
     

<% rss63.close();
st63.close();
con.close();	


%>
				</div></div>
			<div class="clearfix"> </div>
		</div>
	</div>
	
			
		</div>
	</div>
	<!-- //about -->
	<!-- services -->
		
	<!-- //services -->
	<!-- features -->
	<div class="features agileits-w3layouts">
		<div class="container">
			</div>
		</div>
	</div>
	<!-- //features --> 
	<!-- footer start here --> 
	<div class="footer-agile jarallax">
		<div class="container">
			<div class="footer-top-agileinfo">  
				<div class="social-wthree-icons bnragile-icons">
					<ul>
						<li><a href="#" class="fa fa-facebook icon icon-border facebook"> </a></li>
						<li><a href="#" class="fa fa-twitter icon icon-border twitter"> </a></li>
						<li><a href="#" class="fa fa-google-plus icon icon-border googleplus"> </a></li>
						<li><a href="#" class="fa fa-dribbble icon icon-border dribbble"> </a></li> 
					</ul>
					<div class="clearfix"> </div>
				</div>  
			</div>
			<div class="footer-btm-agileinfo">
				<div class="col-md-4 col-xs-4 footer-grid">
					<h3>Useful Info</h3>
					<ul>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Hendrerit quam</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Amet consectetur </a></li>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Iquam hendrerit</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-menu-right"></i>Donec ut lectus </a></li>
					</ul>
				</div> 
				<div class="col-md-4 col-xs-3 footer-grid w3social">
					<h3>Navigation</h3> 
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="about.jsp">About</a></li> 
						<li><a href="gallery.jsp">Gallery</a></li> 
						<li><a href="contact.jsp">Contact</a></li> 
					</ul> 
				</div> 
				<div class="col-md-4 col-xs-5 footer-grid footer-review">
					<h3>Newsletter</h3>
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Your Email" required="">
						<input type="submit" value="Subscribe"> 
						<div class="clearfix"> </div>
					</form> 
					<div class="copy-w3lsright"> 
						<p>� 2017 Demo2day. All rights reserved | Design by <a href="www.vbrsit.com"> Vbrsit Solutions Pvt. Ltd</a></p>
					</div> 
				</div> 
				<div class="clearfix"> </div>
			</div>   
		</div>
	</div> 
	<!-- //footer end here -->     
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="js/move-top1.js"></script>
	<script type="text/javascript" src="js/easing1.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->  
	<!-- jarallax effect -->
	<script src="js/SmoothScroll1.min.js"></script>
	<script src="js/jarallax.js"></script> 
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>  
	<!-- //jarallax effect --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap1.js"></script>
</body>
</html>