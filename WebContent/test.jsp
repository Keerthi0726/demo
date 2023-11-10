<!DOCTYPE html>
<html lang="en">
<head>
<title>Demo | HOME</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flat Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--For lang demo-->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<link href="css/styles.css" rel="stylesheet">

<!--//menu-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!-- End For lang Demo-->

<!-- for banner css files -->
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" /><!--zoomslider css -->
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script><!--modernizer css -->
<!-- //for banner css files -->
	
<link href="css/carousel.css" type="text/css" rel="stylesheet" media="all"><!--for team carousel css --> 

<link href="css/jQuery.lightninBox.css" rel="stylesheet" type="text/css" media="all" /><!-- for portfolio lightninBox css -->

<!-- custom-theme css files -->


<!-- //custom-theme css files-->

<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->

<!-- googlefonts -->
<link href="//fonts.googleapis.com/css?family=Cabin:400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //googlefonts -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
</head>
<body>

<!--/main-header-->
<div id="demo-1" data-zs-src='["images/b1.jpg", "images/b2.jpg", "images/b3.jpg","images/b4.jpg"]' data-zs-overlay="dots">
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
									<li class="scroll hvr-outline-in"><a href="index.html">Home</a></li>
									<li><a class="scroll hvr-outline-in" href="#about">About</a></li>
									<li><a class="scroll hvr-outline-in" href="#services">On going</a></li>
									<li><a class="scroll hvr-outline-in" href="#services">Up Coming</a></li>
									<li><a  href="login.html">Login</a></li>
									<li><a href="register.html">Register</a></li>
									
							  </ul>
						</div>
						<div class="clearfix"> </div>	
					</nav>
				 <div class="clearfix"> </div>
			   </div>
			   </div>
			   <div class="book-form">
						   <form action="#" method="post">
								<div class="col-md-3 form-time-w3layouts">
										<label><i class="fa fa-wrench" aria-hidden="true"></i> Name</label>
										<input type="text" placeholder="Name" required="">
								</div>
								<div class="col-md-3 form-date-w3-agileits">
										<label><i class="fa fa-map-marker" aria-hidden="true"></i> Location</label>
										<select class="form-control">
											<option></option>
											<option>Japan</option>
											<option>America</option>
											<option>London</option>
											<option>Paris</option>
										</select>
								</div>
								<div class="col-md-3 form-left-agileits-w3layouts ">
										<label><i class="fa fa-university" aria-hidden="true"></i> Institutes</label>
										<select class="form-control">
											<option></option>
											<option>Real Homes</option>
											<option>Apartments</option>
											<option>Real Flats</option>
										</select>
								</div>
								<div class="col-md-3 form-left-agileits-submit">
									  <input type="submit" value="Search for Demo">
								</div>
								<div class="clearfix"></div>
							</form>
						</div>
					
		
 <!--/banner-section-->

 
 
 <!-- header-top -->
	
	<!-- //banner-bottom --> 	
	<script src="js/responsiveslides.min.js"></script> 
	<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>
	
		
	<!-- pricing -->
<div class="jarallax w3ls-section wthree-pricing" id="pricing">
		<div class="container">
			<div class="w3ls-title"> 
				<h3 class="agileits-title"><span>Today</span>Demo's</h3>
			</div>
			<div class="pricing-grids-info">
				<section class="slider grid">
					<div class="flexslider">
					<div class="flex-viewport">
<ol class="flex-control-nav flex-control-paging">
						<ul class="slides">

							
							
							<%

        Connection con1 = DriverManager.getConnection(url,uname,upass);
	        //Executing a query
	    Statement st17= con1.createStatement();
		
		ResultSet rs17=st17.executeQuery("select * from hostademo where date=curdate()");
      
		int x = 1 ;
		   int y = 4;  %>
		   <li class="flex-nav-prev">
    	      <%while(rs17.next())
				        
			       {
					 
					 %>
    			    	
    			    	   <%
    			    	   while(x<=3){
    			    		   %>
							 <div class="pricing-grid grid-one">
	
							
			<div class="w3ls-top">
				<h3><%=rs17.getString(2) %></h3>
				 <h4> 300<span class="sup">$</span> </h4> 
				<div class="clearfix"> </div>
			</div>
			<div class="w3ls-bottom">
				<ul class="count">
					<li><%=rs17.getString(3) %></li>
					<li><%=rs17.getString(6) %> Time <%=rs17.getString(7) %></li>
					<li><%=rs17.getString(13) %></li>
					<li>No of seats <%=rs17.getString(12) %></li>
				</ul>
				<div class="more">
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">Sign Up</a>				
				</div>
			</div>
		</div>
    			    	  <% 
    			          
    			        //   out.println("1st LI"+rs17.getString(2));

    			       }
		       
    			    	   x++;
                    %>   
                    <%} %>
                   </li>
				 
															 
							
							
													
						</ul>
					</div>
				</section>
				
				<!--FlexSlider-->
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "pagination",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				</script>
				<!--End-slider-script-->
			</div>
			 </div>
			 
			 	<!--//pricing-->
	
	<!-- services -->
	<div class="jarallax w3ls-section services" id="services">
		<div class="w3ls-title"> 
			<h3 class="agileits-title"><span>I</span>nstitutes</h3>
		</div>
			<div class="services-agileinfo">
				<div class="services1 col-md-10">
					<div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
						<h4>service1</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						<h4>service2</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="fa fa-cogs" aria-hidden="true"></span>
						<h4>service3</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
						<h4>service4</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<div class="col-sm-2 col-xs-6 services-agile-grids service5">
						<span class="glyphicon glyphicon-check" aria-hidden="true"></span>
						<h4>service5</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
						<h4>service6</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<div class="clearfix"> </div>
			    </div>
				<div class="col-md-2 services-agile-grids last">
					<span class="fa fa-list-alt" aria-hidden="true"></span>
						<h4>service7</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
				</div>
				<div class="clearfix"> </div>
		</div>
	</div>	</div></div></div></div>
		</div></div>
				</div>
		</div>
		</div>
	<!-- //services -->

<!-- //menu-js -->
	<!-- jarallax -->

<div class="container">
	<div class="future">
		<h3 >Fetured Projects</h3>
			<div class="content-bottom-in"><div class="nbs-flexisel-container"><div class="nbs-flexisel-inner">
			<ul id="flexiselDemo1" class="nbs-flexisel-ul" style="left: -162px; display: block;">			
								
							
					<li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
								<a href="single.html"><img class="img-responsive" src="images/pi3.jpg" alt="">	</a>
									<div class="fur">
										<div class="fur1">
		                                    <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
		                                    <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
		                                   	<span>Paris</span>
                               			</div>
			                            <div class="fur2">
			                               	<span>2 BHK</span>
			                             </div>
									</div>					
							</div></li><li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
								<a href="single.html"><img class="img-responsive" src="images/pi.jpg" alt="">	</a>
									<div class="fur">
										<div class="fur1">
		                                    <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
		                                    <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
		                                   	<span>Paris</span>
                               			</div>
			                            <div class="fur2">
			                               	<span>2 BHK</span>
			                             </div>
									</div>					
							</div></li><li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
									<a href="single.html"><img class="img-responsive" src="images/pi1.jpg" alt="">	</a>
										<div class="fur">
											<div class="fur1">
			                                    <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
			                                   <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
			                                   	<span>Paris</span>
	                               			</div>
				                            <div class="fur2">
				                               	<span>2 BHK</span>
				                             </div>
										</div>					
								</div></li><li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
								<a href="single.html"><img class="img-responsive" src="images/pi2.jpg" alt="">	</a>
									<div class="fur">
										<div class="fur1">
		                                    <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
		                                   <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
		                                   	<span>Paris</span>
                               			</div>
			                            <div class="fur2">
			                               	<span>2 BHK</span>
			                             </div>
									</div>					
							</div></li><li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
								<a href="single.html"><img class="img-responsive" src="images/pi3.jpg" alt="">	</a>
									<div class="fur">
										<div class="fur1">
		                                    <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
		                                    <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
		                                   	<span>Paris</span>
                               			</div>
			                            <div class="fur2">
			                               	<span>2 BHK</span>
			                             </div>
									</div>					
							</div></li><li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
								<a href="single.html"><img class="img-responsive" src="images/pi.jpg" alt="">	</a>
									<div class="fur">
										<div class="fur1">
		                                    <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
		                                    <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
		                                   	<span>Paris</span>
                               			</div>
			                            <div class="fur2">
			                               	<span>2 BHK</span>
			                             </div>
									</div>					
							</div></li><li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
									<a href="single.html"><img class="img-responsive" src="images/pi1.jpg" alt="">	</a>
										<div class="fur">
											<div class="fur1">
			                                    <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
			                                   <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
			                                   	<span>Paris</span>
	                               			</div>
				                            <div class="fur2">
				                               	<span>2 BHK</span>
				                             </div>
										</div>					
								</div></li><li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
								<a href="single.html"><img class="img-responsive" src="images/pi2.jpg" alt="">	</a>
									<div class="fur">
										<div class="fur1">
		                                    <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
		                                   <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
		                                   	<span>Paris</span>
                               			</div>
			                            <div class="fur2">
			                               	<span>2 BHK</span>
			                             </div>
									</div>					
							</div></li>
								</ul>
								 <script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems: 4,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
						    	responsiveBreakpoints: { 
						    		portrait: { 
						    			changePoint:480,
						    			visibleItems: 1
						    		}, 
						    		landscape: { 
						    			changePoint:640,
						    			visibleItems: 2
						    		},
						    		tablet: { 
						    			changePoint:768,
						    			visibleItems: 3
						    		}
						    	}
						    });
						    
						});
			</script>
			<script type="text/javascript" src="js/jquery.flexisel.js"></script>
					
		</div>
	</div>
</div>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>


<!-- //faq's -->



<!-- footer -->
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
				<p>  2018 Demo. All rights reserved | Design by <a href="http://w3layouts.com/">SGTI</a></p>
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
	<!-- //smooth-scrolling-of-move-up -->  		
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js1/bootstrap.js"></script>

<!-- testimonilas slider --
				<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems: 3,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 1
										}, 
										landscape: { 
											changePoint:640,
											visibleItems:3
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							});
					</script>-->
<script type="text/javascript" src="js1/jquery.flexisel.js"></script>
<!-- testimonilas slider -->

</body>
</html>