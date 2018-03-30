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

<section id="slider_area" class="text-center">
	<div class="slider_active owl-carousel">
		<div class="single_slide"
			style="background-image: url(<c:url value="/resources/themeforest/img/1.jpg" />); background-size: cover; background-position: top;">
			<div class="container">
				<div class="single-slide-item-table">
					<div class="single-slide-item-tablecell">
						<div class="slider_content text-left slider-animated-1">
							<p class="animated">Wedding Special</p>
							<h1 class="animated">best shopping</h1>
							<h4 class="animated">Big Sale of This Week 20% off</h4>
							<a href="/shop/category/wedding-collection.html/ref=c:1,3" class="btn main_btn animated">shop now</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="single_slide"
			style="background-image: url(<c:url value="/resources/themeforest/img/2.jpg" />); background-size: cover; background-position: top;">
			<div class="container">
				<div class="single-slide-item-table">
					<div class="single-slide-item-tablecell">
						<div class="slider_content text-center slider-animated-2">
							<p class="animated">Women fashion</p>
							<h1 class="animated">popular style</h1>
							<h4 class="animated">Big Sale of This Week 30% off</h4>
							<a href="/shop/category/women.html/ref=c:1" class="btn main_btn animated">shop now</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="single_slide"
			style="background-image: url(<c:url value="/resources/themeforest/img/5219.jpg"/>); background-size: cover; background-position: top;">
			<div class="container">
				<div class="single-slide-item-table">
					<div class="single-slide-item-tablecell">
						<div class="slider_content text-right slider-animated-3">
							<p class="animated">Girls Collection</p>
							<h1 class="animated">popular style</h1>
							<h4 class="animated">Big Sale up to 30% off</h4>
							<a href="/shop/category/girls.html/ref=c:3,5" class="btn main_btn animated">shop now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>