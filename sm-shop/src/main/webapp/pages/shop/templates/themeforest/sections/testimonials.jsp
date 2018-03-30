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

<section id="testimonials" class="testimonials_area section_padding"
		style="background: url(img/testimonial-bg.jpg); background-size: cover; background-attachment: fixed;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div id="testimonial-slider" class="owl-carousel">
					<div class="testimonial">
						<div class="pic">
							<img src="img/testimonial/1.jpg" alt="">
						</div>
						<div class="testimonial-content">
							<p class="description">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Vivamus sed accumsan diam.
								Suspendisse molestie nibh at tempor mollis. Integer aliquet
								facilisis</p>
							<h3 class="testimonial-title">williamson</h3>
							<small class="post"> - Themesvila</small>
						</div>
					</div>

					<div class="testimonial">
						<div class="pic">
							<img src="img/testimonial/2.jpg" alt="">
						</div>
						<div class="testimonial-content">
							<p class="description">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Vivamus sed accumsan diam.
								Suspendisse molestie nibh at tempor mollis. Integer aliquet
								facilisis</p>
							<h3 class="testimonial-title">kristiana</h3>
							<small class="post"> - Themesvila</small>
						</div>
					</div>


					<div class="testimonial">
						<div class="pic">
							<img src="img/testimonial/3.jpg" alt="">
						</div>
						<div class="testimonial-content">
							<p class="description">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Vivamus sed accumsan diam.
								Suspendisse molestie nibh at tempor mollis. Integer aliquet
								facilisis</p>
							<h3 class="testimonial-title">williamson</h3>
							<small class="post"> - Themesvila</small>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>