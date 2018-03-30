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

<section id="brand_area" class="text-center">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="brand_slide owl-carousel">
					<div class="item text-center">
						<a href="#"><img src="img/brand/1.png" alt=""
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="img/brand/2.png" alt=""
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="img/brand/3.png" alt=""
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="img/brand/4.png" alt=""
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="img/brand/5.png" alt=""
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="img/brand/6.png" alt=""
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="img/brand/7.png" alt=""
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="img/brand/8.png" alt=""
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="img/brand/9.png" alt=""
							class="img-responsive" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>