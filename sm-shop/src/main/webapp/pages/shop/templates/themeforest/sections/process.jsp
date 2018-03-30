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
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm" %> 
 
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<section class="process_area section_padding gradient_section">
	<div class="container">
		<div class="row text-center">
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="single-process">
					<!-- process Icon -->
					<div class="picon">
						<i class="fa fa-truck"></i>
					</div>
					<!-- process Content -->
					<div class="process_content">
						<h3>free shipping</h3>
						<p>Shipping Absolutely Free</p>
					</div>
				</div>
			</div>
			<!-- End Col -->

			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="single-process">
					<!-- process Icon -->
					<div class="picon">
						<i class="fa fa-money"></i>
					</div>
					<!-- process Content -->
					<div class="process_content">
						<h3>Stitches On Demand</h3>
						<p>Stitches Support available</p>
					</div>
				</div>
			</div>
			<!-- End Col -->

			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="single-process">
					<!-- process Icon -->
					<div class="picon">
						<i class="fa fa-headphones "></i>
					</div>
					<!-- process Content -->
					<div class="process_content">
						<h3>Support 24/7</h3>
						<p>Lorem ipsum dummy</p>
					</div>
				</div>
			</div>
			<!-- End Col -->

			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="single-process">
					<!-- process Icon -->
					<div class="picon">
						<i class="fa fa-clock-o"></i>
					</div>
					<!-- process Content -->
					<div class="process_content">
						<h3>Opening All Week</h3>
						<p>Lorem ipsum dummy</p>
					</div>
				</div>
			</div>
			<!-- End Col -->

		</div>
	</div>
	</section>