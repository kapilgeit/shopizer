<%
response.setCharacterEncoding("UTF-8");
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
 
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<link href="<c:url value="/resources/templates/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/templates/bootstrap/css/bootstrap-responsive.min.css" />" rel="stylesheet">

<script src="<c:url value="/resources/js/vendor/jquery-1.12.4.min.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/bootstrap.min.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/jquery.meanmenu.min.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/jquery.mixitup.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/jquery.counterup.min.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/waypoints.min.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/wow.min.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/venobox.min.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/owl.carousel.min.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/simplePlayer.js" />"></script>
		<script src="<c:url value="/resources/templates/test/js/main.js" />"></script>
		
		
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,500,600,700,800" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Handlee" rel="stylesheet">	
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/css/animate.css" />" />
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/css/owl.theme.default.min.css" />" />
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/css/owl.carousel.min.css" />" />
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/css/meanmenu.min.css" />" />
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/css/venobox.css" />" />
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/css/font-awesome.css" />" />
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/css/bootstrap.min.css" />" />	
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/style.css" />" />
	<link rel="stylesheet" href="<c:url value="/resources/templates/test/css/responsive.css" />" />
    

<!-- Start Slider Area -->
		<section id="slider_area" class="text-center">
			<div class="slider_active owl-carousel">
				<!-- 
				<div class="single_slide" style="background-image: url(<c:url value="/resources/templates/test/img/1.jpg" />); background-size: cover; background-position: center;">
					<div class="container">	
						<div class="single-slide-item-table">
							<div class="single-slide-item-tablecell">
								<div class="slider_content text-left slider-animated-1">						
									<p class="animated">New Year 2018</p>
									<h1 class="animated">best shopping</h1>
									<h4 class="animated">Big Sale of This Week 50% off</h4>
									<a href="#" class="btn main_btn animated">shop now</a>
								</div>
							</div>
						</div>						
					</div>
				</div>
				-->
				<div class="single_slide" style="background-image: url(<c:url value="/resources/templates/test/img/2.jpg" />); background-size: auto; background-position: top ;">
					<div class="container">		
						<div class="single-slide-item-table">
							<div class="single-slide-item-tablecell">
								<div class="slider_content text-center slider-animated-2">						
									<p class="animated">Women fashion</p>
									<h1 class="animated">popular style</h1>
									<h4 class="animated">Big Sale of This Week 50% off</h4>
									<a href="#" class="btn main_btn animated">shop now</a>
								</div>
							</div>
						</div>	
					</div>
				</div>
				
				<div class="single_slide" style="background-image: url(<c:url value="/resources/templates/test/img/3.jpg" />); background-size: auto; background-position: top ;">
					<div class="container">
						<div class="single-slide-item-table">
							<div class="single-slide-item-tablecell">
								<div class="slider_content text-right slider-animated-3">						
									<p class="animated">Men Collection</p>
									<h1 class="animated">popular style</h1>
									<h4 class="animated">Big Sale of This Week 50% off</h4>
									<a href="#" class="btn main_btn animated">shop now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Slider Area -->
		
		
		
		
		
		
		
		
