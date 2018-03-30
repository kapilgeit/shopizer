<%
	response.setCharacterEncoding("UTF-8");
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="lang" scope="request"
	value="${requestScope.locale.language}" />

<html xmlns="http://www.w3.org/1999/xhtml">


<head>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116559023-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-116559023-1');
	</script>
	<!-- Google Analytics Ended here -->

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title><c:out value="${requestScope.PAGE_INFORMATION.pageTitle}" /></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<c:out value="${requestScope.PAGE_INFORMATION.pageDescription}" />">
    <meta name="author" content="<c:out value="${requestScope.MERCHANT_STORE.storename}"/>">
	<jsp:include page="/pages/shop/templates/themeforest/sections/shopLinks.jsp" />
	<link
		href="https://fonts.googleapis.com/css?family=Lato:300,400,500,600,700,800"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Handlee"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,500,600,700,800" rel="stylesheet" type="text/css" /> 
	<link href="https://fonts.googleapis.com/css?family=Handlee" rel="stylesheet" type="text/css" />	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/animate.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/owl.theme.default.min.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/owl.carousel.min.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/meanmenu.min.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/venobox.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/font-awesome.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/bootstrap.min.css" />" />	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/style.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/themeforest/css/responsive.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap/css/sm-bootstrap.css" />" />
	
	
	
</head>
<body>
<div id="pageContainer">
	<!--  Preloader  -->

	<div class="preloader">
		<div class="status-mes">
			<div class="bigSqr">
				<div class="square first"></div>
				<div class="square second"></div>
				<div class="square third"></div>
				<div class="square fourth"></div>
			</div>
			<div class="text_loading text-center">loading</div>
		</div>
	</div>
	

	<!--  Start Header  -->
	<tiles:insertAttribute name="header" ignore="true"/>
	<tiles:insertAttribute name="navbar" ignore="true"/>
	<!--  End Header  -->

	<!-- Start Slider Area -->
	<tiles:insertAttribute name="slider" ignore="true"/>
	<!-- End Slider Area -->
	
	<!-- Start Featured product Area -->
	<!-- Iterate over featuredItems -->
	<c:set var="ITEMS" value="${requestScope.featuredItems}" scope="request" />
	<c:set var="FEATURED" value="true" scope="request" />
	
	<!--  Process -->
	<tiles:insertAttribute name="process" ignore="true"/>
	<!--  End Process -->
	
	
	<tiles:insertAttribute name="featuredProduct" ignore="true"/>
	<!-- End Featured Products Area -->

	<!--  Promo ITEM STRAT  -->
	<tiles:insertAttribute name="promo" ignore="true"/>
	<!--  Promo ITEM END -->
	
	<tiles:insertAttribute name="body" ignore="true"/>

	<!-- Start product Area -->
	<tiles:insertAttribute name="ourproducts" ignore="true"/>
	<!-- End product Area -->

	<!-- Special Offer Area -->
	<tiles:insertAttribute name="specialOffers" ignore="true"/>
	<!-- End Special Offer Area -->

	<!-- Testimonials Area -->
	<tiles:insertAttribute name="testimonials" ignore="true"/>
	<!-- End STestimonials Area -->

	<!--  Blog -->
	<tiles:insertAttribute name="blogs" ignore="true"/>
	<!--  Blog end -->

	
	<!--  Brand -->
	<tiles:insertAttribute name="brand" ignore="true"/>
	<!--   Brand end  -->

	<!--  FOOTER START  -->
	<tiles:insertAttribute name="footer" ignore="true"/>
	<!--  FOOTER END  -->
		
		<script src="<c:url value="/resources/js/jquery.showLoading.min.js" />"></script>
		<script src="<c:url value="/resources/themeforest/js/bootstrap.min.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/jquery.meanmenu.min.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/jquery.mixitup.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/jquery.counterup.min.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/waypoints.min.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/wow.min.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/venobox.min.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/owl.carousel.min.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/simplePlayer.js" />" ></script>
		<script src="<c:url value="/resources/themeforest/js/main.js" />" ></script>
		
		<jsp:include page="/pages/shop/templates/themeforest/sections/jsLinks.jsp" />
		
		
		<script src="<c:url value="/resources/js/shop-functions.js" />"></script>
	</div>	
</body>
</html>