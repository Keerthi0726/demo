
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
<script language="javascript">
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

  var url="searchloc.jsp";

  url +="?count=" +str;

  xmlHttp.onreadystatechange = stateChange;

  xmlHttp.open("GET", url, true);

  xmlHttp.send(null);

  }

  function stateChange(){   

  if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   

  document.getElementById("venue").innerHTML=xmlHttp.responseText   

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

  var url="searchinst.jsp";

  url +="?count=" +str;

  xmlHttp.onreadystatechange = stateChange1;

  xmlHttp.open("GET", url, true);

  xmlHttp.send(null);

  }
  function stateChange1(){   

  if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   

  document.getElementById("inst").innerHTML=xmlHttp.responseText   

  }   
  }

  </script> 
<style type="text/css">
.techname{
	background-color: red;
	height: 100px;
	line-height: 100px;
	color: #fff;
}
.demo-inner-content{
	background-color: #c2e7ff;
}
</style>  
</head>
<body>
<%@page import="java.io.*,java.util.*" %>
<%@page isErrorPage="true" %>

<!--/main-header-->
<div id="demo-1" data-zs-overlay="dots">
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
									<li><a href="index.jsp">Home</a></li>
									<li><a  href="about.jsp">About</a></li>
									<li><a  href="ongoing.jsp">On going</a></li>
									<li><a  href="upcoming.jsp">Up Coming</a></li>
									<li><a  href="login.jsp">Login</a></li>
									<li><a href="inst_register.jsp">Register</a></li>
									
							  </ul>
						</div>
						<div class="clearfix"> </div>	
					</nav>
				 <div class="clearfix"> </div>
			   </div>
			   </div>
			   <div class="book-form">
						   <form action="searchdemo.jsp" method="post">
						   <%@include file="dbcon.jsp"%>
            <%
            	
           	Connection con = DriverManager.getConnection(url,uname,upass);
           	 Statement st9=con.createStatement();
           	 ResultSet rs9=st9.executeQuery("select * from listoftechnologies");
           	 
           	Statement st67=con.createStatement();
          	 ResultSet rs67=st67.executeQuery("select * from hostademo");
          	
           	 %>
           	
								<div class="col-md-3 form-time-w3layouts">
										<label><i class="fa fa-wrench" aria-hidden="true"></i>Technology Name</label>
										<select class="form-control" name="techselect" onchange="showState(this.value)" id="tech">
											<option value="">Search by Technology</option>
											 <%while(rs9.next()){%>
											<option value="<%=rs9.getString("technologyname") %>"><%=rs9.getString("technologyname") %></option>
											<%} %>
										</select>
								</div>
								<div class="col-md-3 form-date-w3-agileits">
										<label><i class="fa fa-map-marker" aria-hidden="true"></i> Location</label>
										<select class="form-control" id="venue" name="locselect" onchange="showCity(this.value)" >
											<option value="">Search by Location</option>
											<%while(rs67.next()){%>
											<option value="<%=rs67.getString("address") %>"><%=rs67.getString("address") %></option>
											<%} %>
										</select>
								</div>
								<div class="col-md-3 form-left-agileits-w3layouts ">
										<label><i class="fa fa-university" aria-hidden="true"></i> Institutes Name</label>
										<select class="form-control" id="inst" name="instselect" onchange="show(this.value)">
											<option value="">Search by Institute Name</option>
											<%while(rs67.next()){%>
											<option value="<%=rs67.getString("institutename" ) %>"><%=rs67.getString("institutename" ) %></option>
											<%} %>
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
	<script src="js1/responsiveslides.min.js"></script> 
	           
	<div class="jarallax w3ls-section wthree-pricing" id="pricing">	
		<div class="container">
			<div class="w3ls-title"> 
				<h3 class="agileits-title"><span>D</span>eom's</h3>
			</div>
			<div class="pricing-grids-info">
			
			
				<section class="slider grid">
				
					<div class="flexslider">
					<div class="flex-viewport">
					
<ol class="flex-control-nav flex-control-paging">
					<ul class="slides">	
	<%@page import= "java.text.DateFormat" %>
 <%@page import ="java.text.SimpleDateFormat"%>
 <%@page import ="java.util.Date"%>	

          
  <% 
       
       Date currentDate = new Date();
       //DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
       //String formattedDate = df.format(currentDate);

        SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");

String dates=formatter.format(currentDate);%>					
							
            <%
            	
           	//Connection con = DriverManager.getConnection(url,uname,upass);
           	 Statement st27=con.createStatement();
           	 ResultSet rs27=st27.executeQuery("select * from hostademo where date='"+dates+"' ");
           	 %>
           	 <%if(rs27.next()){
           		 
           	do{%>
           	<li class="flex-nav-prev">
         
								 <div class=" pricing-grid grid-one">
									<div class="w3ls-top">
										<h3><%=rs27.getString(2)%></h3>
										<h3> By <%=rs27.getString("trainername")%></h3> 
										<div class="clearfix"> </div>
									</div>
									<div class="w3ls-bottom">
										<ul class="count">
											<li>Time:&nbsp;<%=rs27.getString("time") %></li>
											<li>Duration:&nbsp;<%=rs27.getString("duration") %>hrs</li>
											<li>No Of Seats:&nbsp;<%=rs27.getString("noofseats") %></li>
											<li>1*Month Free resources</li>
										</ul>
										<div class="more">
											<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="Viewandbook.jsp?DemoId=<%=rs27.getString(1)%>">Sign Up</a>				
										</div>
									</div>
								</div>
								
										
								
					
              <%if(rs27.next()){ %> 
            		  
            		  
            		   <div class="pricing-grid grid-two">
									<div class="w3ls-top">
										<h3><%=rs27.getString(2)%></h3>
										<h3> By <%=rs27.getString("trainername")%></h3> 
										<div class="clearfix"> </div>
									</div>
									<div class="w3ls-bottom">
										<ul class="count">
											<li>Time:&nbsp;<%=rs27.getString("time") %></li>
											<li>Duration:&nbsp;<%=rs27.getString("duration") %>hrs</li>
											<li>No Of Seats:&nbsp;<%=rs27.getString("noofseats") %></li>
											<li>1*Month Free resources</li>
										</ul>
										<div class="more">
											<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="Viewandbook.jsp?DemoId=<%=rs27.getString(1)%>">Sign Up</a>				
										</div>
									</div>
								</div>
								<%} %>
								<%if(rs27.next()){ %>
								<div class="pricing-grid grid-three">
									<div class="w3ls-top">
										<h3><%=rs27.getString(2)%></h3>
										<h3> By <%=rs27.getString("trainername")%></h3> 
										<div class="clearfix"> </div>
									</div>
									<div class="w3ls-bottom">
										<ul class="count">
											<li>Time:&nbsp;<%=rs27.getString("time") %></li>
											<li>Duration:&nbsp;<%=rs27.getString("duration") %>hrs</li>
											<li>No Of Seats:&nbsp;<%=rs27.getString("noofseats") %></li>
											<li>1*Month Free resources</li>
										</ul>
										<div class="more">
											<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="Viewandbook.jsp?DemoId=<%=rs27.getString(1)%>">Sign Up</a>				
										</div>
									</div>
								</div>
								<%} %>
								<%if(rs27.next()){ %>
								<div class="zb pricing-grid grid-four">
									<div class="w3ls-top">
										<h3><%=rs27.getString(2)%></h3>
										<h3> By <%=rs27.getString("trainername")%></h3> 
										<div class="clearfix"> </div>
									</div>
									<div class="w3ls-bottom">
										<ul class="count">
											<li>Time:&nbsp;<%=rs27.getString("time") %></li>
											<li>Duration:&nbsp;<%=rs27.getString("duration") %>hrs</li>
											<li>No Of Seats:&nbsp;<%=rs27.getString("noofseats") %></li>
											<li>1*Month Free resources</li>
										</ul>
										<div class="more">
											<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="Viewandbook.jsp?DemoId=<%=rs27.getString(1)%>">Sign Up</a>				
										</div>
									</div>
								</div>
								<%} %>
								
								<div class="clearfix"> </div> 
							</li>
							
							
								 <%} while(rs27.next());
           	}
           	else
							
			{%>
			
           		<li style="color:white; font-size: 200%;"><b>No Demos Today</b></li>
			<%}
           	 rs27.close();
st27.close();
con.close();
             %>
						</ul></div><div class="clearfix"> </div>
						</div>
				</section>
									
             </div><div class="clearfix"> </div>
				
				<!--FlexSlider-->
				<script defer src="js1/jquery.flexslider.js"></script>
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
			<h3 class="agileits-title" style="color:white;"><span>I</span>institutes</h3>
		</div>
		
			
				 <%
            	
           	Connection conn = DriverManager.getConnection(url,uname,upass);
           	 Statement st2=conn.createStatement();
           	 ResultSet rs2=st2.executeQuery("select * from newregistration  ");
           	 %>
           	 <%int size=0;
           	if(rs2.next())	{
           	
           	%>
           	<div class="services-agileinfo">
           	<div class="services1 col-md-10">
					<div class="col-sm-2 col-xs-6 services-agile-grids service5">
						<span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
						<a data-wow-delay=".5s" href="viewinst.jsp?DemoId=<%=rs2.getString("EmailId")%>"><h4><%=rs2.getString(4)%></h4></a>				
						
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div><%} %>
						<%if(rs2.next()){%>
					 <div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						<a data-wow-delay=".5s" href="viewinst.jsp?DemoId=<%=rs2.getString("EmailId")%>"><h4><%=rs2.getString(4)%></h4></a>				
						
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<%}
						if(rs2.next()){%>
					<div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="fa fa-cogs" aria-hidden="true"></span>
						<a data-wow-delay=".5s" href="viewinst.jsp?DemoId=<%=rs2.getString("EmailId")%>"><h4><%=rs2.getString(4)%></h4></a>				
										
						
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<%}
						if(rs2.next()){%>
					<div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
						
						<a data-wow-delay=".5s" href="viewinst.jsp?DemoId=<%=rs2.getString("EmailId")%>"><h4><%=rs2.getString(4)%></h4></a>				
							
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<%}
						if(rs2.next()){%>
					<div class="col-sm-2 col-xs-6 services-agile-grids service5">
						<span class="glyphicon glyphicon-check" aria-hidden="true"></span>
						<a data-wow-delay=".5s" href="viewinst.jsp?DemoId=<%=rs2.getString("EmailId")%>"><h4><%=rs2.getString(4)%></h4></a>				
							
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<%}
						if(rs2.next()){%>
					<div class="col-sm-2 col-xs-6 services-agile-grids">
						<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
					<a data-wow-delay=".5s" href="viewinst.jsp?DemoId=<%=rs2.getString("EmailId")%>"><h4><%=rs2.getString(4)%></h4></a>				
								<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
					</div>
					<%} %>
					<div class="clearfix"> </div>
					
			    </div>
			    
			    <%
						if(rs2.next()){%>
				<div class="col-md-2 services-agile-grids last">
					<span class="fa fa-list-alt" aria-hidden="true"></span>
						<a data-wow-delay=".5s" href="viewinst.jsp?DemoId=<%=rs2.getString("EmailId")%>"><h4><%=rs2.getString(4)%></h4></a>				
							
						<p>Itaque earum rerum hic tenetur a sapiente delectus.</p> 
				</div>
				</div>
				<%} %>
				
           	 <% rs27.close();
st27.close();
con.close();
             %>
				<div class="clearfix"> </div>
		</div>
	</div>	</div></div></div></div>
		</div></div>
				</div>
		</div>
		</div>
	
	
	
	<!-- pricing -->
		<!-- //services -->

<!-- //menu-js -->
	<!-- jarallax -->

<div class="container">
	<div class="future">
		<h3 >Dealing Technologies</h3>
			<div class="content-bottom-in"><div class="nbs-flexisel-container"><div class="nbs-flexisel-inner">
			<ul id="flexiselDemo1" class="nbs-flexisel-ul" style="left: -162px; display: block;">			
					 <%
            	
           	Connection conn1 = DriverManager.getConnection(url,uname,upass);
           	 Statement st=conn1.createStatement();
           	 ResultSet rs=st.executeQuery("select * from listoftechnologies  ");
           	                 %>
           	 <%
           	while(rs.next())	{%>			
							
					<li class="nbs-flexisel-item" style="width: 162px;"><div class="project-fur">
								<h4 class="techname"><a href="viewtech.jsp?DemoId=<%=rs.getString("technologyname")%>"><span class="fur-money"><%=rs.getString("technologyname")%></span></a></h4>
									<div class="fur">
										<div class="fur1">
		                                    <h6 class="fur-name"><a href="single.html">Contrary to popular</a></h6>
		                                   	<span>25</span>
                               			</div>
			                            <div class="fur2">
			                               	<h4><%=rs.getString("technologyname")%></h4>
			                             </div>
									</div>					
							</div></li><%} %>
						
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
			<script type="text/javascript" src="js1/jquery.flexisel.js1"></script>
					
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
				<p>© 2018 Demo. All rights reserved | Design by <a href="http://w3layouts.com/">SGTI</a></p>
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