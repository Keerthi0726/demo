<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Demo2Day</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bio Farm Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css1/bootstrap1.css" type="text/css" rel="stylesheet" media="all">
<link href="css1/style1.css" type="text/css" rel="stylesheet" media="all">   
<link href="css1/font-awesome1.css" rel="stylesheet"> <!-- font-awesome icons --> 
<!-- //Custom Theme files --> 
<!-- js -->
<script src="js1/jquery-2.2.3.min.js"></script>  
<!-- //js -->
<!-- web-fonts -->    
<link href="//fonts.googleapis.com/css?family=Pinyon+Script" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<!-- //web-fonts -->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--For lang demo-->
		<link href="css1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js1/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<link href="css1/styles.css" rel="stylesheet">

<!--//menu-->
<!--theme-style-->
<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />	
<!-- End For lang Demo-->

<!-- for banner css files -->
<link rel="stylesheet" type="text/css" href="css1/zoomslider.css" /><!--zoomslider css -->
<script type="text/javascript" src="js1/modernizr-2.6.2.min.js"></script><!--modernizer css -->
<!-- //for banner css files -->
	
<link href="css1/carousel.css" type="text/css" rel="stylesheet" media="all"><!--for team carousel css --> 

<link href="css1/jQuery.lightninBox.css" rel="stylesheet" type="text/css" media="all" /><!-- for portfolio lightninBox css -->

<!-- custom-theme css files -->


<!-- //custom-theme css files-->

<!-- font-awesome-icons -->
<link href="css1/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->

<!-- googlefonts -->
<link href="//fonts.googleapis.com/css?family=Cabin:400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //googlefonts -->
<link rel="stylesheet" href="css1/flexslider.css" type="text/css" media="screen" />
<style type="text/css">
.demo-inner-content{
	background-color: #c2e7ff;
}
</style>
</head>
<body> 
<div id="demo-1"  data-zs-overlay="dots">
	<div class="demo-inner-content">
	
	<!--/banner-info-->
	   <div class="header">
			   <div class="header-main">
				 <div class="container">
				<nav class="navbar navbar-default">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<h1><a  href="index.html">Demo<span>Search for Demo</span></a></h1>
						</div>
						<!-- navbar-header -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right">
									<li ><a href="index.jsp">Home</a></li>
									<li><a  href="about.jsp">About</a></li>
									<li><a  href="ongoing.jsp">On going</a></li>
									<li><a  href="upcoming.jsp">Up Coming</a></li>
									<li><a  href="login.html">Login</a></li>
									<li><a href="register.html">Register</a></li>
									
							  </ul>
						</div>
						<div class="clearfix"> </div>	
					</nav>
				 <div class="clearfix"> </div>
			   </div>
			   </div>
		<div class="container"> 
		<%@ page import ="java.sql.*" %>
          <%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>
        <%String tech=(String)request.getParameter("techselect");
									String loc=(String)request.getParameter("locselect");
											String inst=(String)request.getParameter("instselect");
													
        %>
        <%  Connection con = DriverManager.getConnection(url,uname,upass);
		//Executing a query
		Statement st67= con.createStatement();
		
		
		
		ResultSet rs67=st67.executeQuery("select * from hostademo where demoname='"+tech+"' and address='"+loc+"' and institutename='"+inst+"'");
		if(rs67.next()){
		String string=rs67.getString(14);%>
			 
				
				
				
					
					<div class="contact_wthreerow agileits-w3layouts">
				<div class="col-md-7 w3l_contact_form">
				<%-- <h4><b><u><%=rs67.getString(2) %></u></b></h4> --%> 
					<%-- <%Statement st68= con.createStatement();
					 ResultSet rs68=st68.executeQuery("select * from listoftechnologies where technologyname='"+tech+"'");
					if(rs68.next()){%> --%>
					<%-- <table>
					<tr>
					<td style="color:white;"><%=rs68.getString(4)%></td></tr></table><%} %> --%>
						<!-- <input type="text" name="Name" placeholder="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
					<br><br><br><br>
					
						<input type="email" name="Email" placeholder="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<br>
					<br>
					<br>
					<br>
					
					
					    <input type="text" name="Phone" placeholder="Contact No" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Contact No';}" required="">
						<br><br><br>
						<br>
						<input type="submit" value="Book Now"> -->
					
				</div>
				<div class=" agileits_w3layouts_contact_gridl">
					
					
					
					
					
				
					
					<table class="table"  width="100%" border="1">
					 <caption><br><h4 ><b><u>Demos on <%=rs67.getString(2) %></u></b></h4></caption>
					 <tr>
      <th><a class="active" style="color:#e5f512;">Institute Name:</a></th>
      <th><a class="active" style="color:#e5f512;">Technology Name:</a></th>
       <th><a class="active" style="color:#e5f512;">Date & Time:</a></th>
       <th><a class="active" style="color:#e5f512;">Duration:</a></th>
       <th><a class="active" style="color:#e5f512;">No of Seats:</a></th>
       <th><a class="active" style="color:#e5f512;">Trainer Name:</a></th>
       <th><a class="active" style="color:#e5f512;">Trainer Experience:</a></th>
       <th><a class="active" style="color:#e5f512;">Address:</a></th>
        <th><a class="active" style="color:#e5f512;">View & Book</a></th></tr>
        <%do{%>
       
						
						<tbody>
							
							
							
							<tr>
								
								<td><span style="color:white;"><%=rs67.getString("institutename")%></span></td>
							
							
								<td><span style="color:white;"><%=rs67.getString("demoname")%></span></td>
							<td><span style="color:white;"><%=rs67.getString(6)%>&emsp;||&emsp;<%=rs67.getString(7)%></span></td>
							
								
								<%if(rs67.getString(8)==String.valueOf(1))
								{%>
									
								<td><span style="color:white;"><%=rs67.getString(8)%>Hour</span></td>
					
								<%} else{%>
								<td><span style="color:white;"><%=rs67.getString(8)%>&emsp;Hours</span></td>
								
							<%} %>
							
							<td><span style="color:white;"><%=rs67.getString(12)%></span></td>
							
								
								<td><span style="color:white;"><%=rs67.getString(4)%></span></td>
							<%
								String trainer=rs67.getString(4);
								Statement st8= con.createStatement();
					 ResultSet rs8=st8.executeQuery("select * from trainerslist where trainername='"+trainer+"'");
					if(rs8.next()){%>
							<%if(rs8.getString(3)==String.valueOf(1))
								{%>
									
								<td><span style="color:white;"><%=rs8.getString(3)%>&emsp;Year</span></td>
					
								<%} else{%>
								<td><span style="color:white;"><%=rs8.getString(3)%>&emsp;Years</span></td>
								
							<%} %>
					
								
							<td><span style="color:white;" ><%=rs67.getString(13)%></span></td>
							<td><span style="color:white;" ><a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="Viewandbook.jsp?DemoId=<%=rs67.getString(1)%>">View & Book</a>				
										</span></td>
							</tr>
						</tbody>
						<%}}while(rs67.next());
		}else{}
		rs67.close();
st67.close();
con.close();

		
		%>
						
						
						
						
					</table> 
					
					
					
					
					
					
					
					
				</div>
				
					
					
					                   
				
				
				<div class="clearfix"> </div>
			</div>
		</div>
	
	
	<!-- //contact --> 
	<!-- footer start here --> 
	
<div class="footer">
		<div class="container">
			<div class="social">
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
				</ul>
			</div>
			<div class="border"></div>
			<div class="agileits-w3layouts-copyright">
				<p>© 2018 Demo. All rights reserved | Design by <a href="http://w3layouts.com/">Vbrsit Solutions</a></p>
			</div>
		</div>
	</div>
<!-- //footer -->


<!-- js -->
<script type="text/javascript" src="js1/jquery-2.1.4.min.js"></script>
<!-- for bootstrap working -->
	<script src="js1/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- //js -->
	

<!-- for banner js file-->
 <script type="text/javascript" src="js1/jquery.zoomslider.min.js"></script><!-- zoomslider js -->
<!-- //for banner js file-->

<!-- for team slider -->
<!-- requried-jsfiles-for owl -->
		 <script src="js1/owl.carousel.js"></script>
			<script>
			 $(document).ready(function() {
					$("#owl-demo").owlCarousel({
						 items : 4,
						 lazyLoad : true,
						 autoPlay : true,
							navigation : true,
							navigationText :  true,
							pagination : false,
							});
				});
			</script>
<!-- //requried-jsfiles-for owl -->
<!-- //for team slider -->

<!-- js for portfolio lightbox -->
<script src="js1/jQuery.lightninBox.js"></script>
<script type="text/javascript">
	$(".lightninBox").lightninBox();
</script>
<!-- /js for portfolio lightbox -->

<!-- for smooth scrolling -->
<script src="js1/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js1/move-top.js"></script>
	<script type="text/javascript" src="js1/easing.js"></script>
	<!-- here stars scrolling icon -->
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
	<!-- //here ends scrolling icon -->
<!-- //for smooth scrolling -->

<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->
<script src="js1/SmoothScroll.min.js"></script> 
	<script src="js1/jarallax.js"></script> 
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1200,
			imgHeight: 768
		})
	</script>  
	<!-- //jarallax --> 
	<!-- start-smooth-scrolling --> 
	<script type="text/javascript" src="js1/move-top.js"></script>
	<script type="text/javascript" src="js1/easing.js"></script>	
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
	<!-- //jarallax effect --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js1/bootstrap1.js"></script>
</body>
</html>