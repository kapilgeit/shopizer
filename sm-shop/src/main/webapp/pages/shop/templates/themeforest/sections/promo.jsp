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

<section id="promo_area" class="section_padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-12">
				<a href="#">
					<div class="single_promo">
						<img src="img/promo/1.jpg" alt="">
						<div class="box-content">
							<h3 class="title">Men</h3>
							<span class="post">2018 Collection</span>
						</div>
					</div>
				</a>
			</div>
			<!--  End Col -->

			<div class="col-lg-4 col-md-6 col-sm-12">
				<a href="#">
					<div class="single_promo">
						<img src="img/promo/2.jpg" alt="">
						<div class="box-content">
							<h3 class="title">Shoe</h3>
							<span class="post">2018 Collection</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="single_promo">
						<img src="img/promo/4.jpg" alt="">
						<div class="box-content">
							<h3 class="title">Watch</h3>
							<span class="post">2018 Collection</span>
						</div>
					</div>
				</a>

			</div>
			<!--  End Col -->

			<div class="col-lg-4 col-md-6 col-sm-12">
				<a href="#">
					<div class="single_promo">
						<img src="img/promo/3.jpg" alt="">
						<div class="box-content">
							<h3 class="title">Women</h3>
							<span class="post">2018 Collection</span>
						</div>
					</div>
				</a>
			</div>
			<!--  End Col -->

		</div>
	</div>
	</section>