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


<section id="blog_area" class="section_padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="section_title">
					<h2>
						latest <span>Blog</span>
					</h2>
					<div class="divider"></div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="single_blog">
					<div class="single_blog_img">
						<img src="img/blog/1.jpg" alt="">
						<div class="blog_date text-center">
							<div class="bd_day">25</div>
							<div class="bd_month">Aug</div>
						</div>
					</div>

					<div class="blog_content">
						<h4 class="post_title">
							<a href="#">Integer euismod dui non auctor</a>
						</h4>
						<ul class="post-bar">
							<li><i class="fa fa-user"></i> Admin</li>
							<li><i class="fa fa-comments-o"></i> <a href="#">2
									comments</a></li>
							<li><i class="fa fa-heart-o"></i> <a href="#">4 like</a></li>
						</ul>
						<p>Proin in blandit lacus. Nam pellentesque tortor eget dui
							feugiat venenatis ....</p>
					</div>
				</div>
			</div>
			<!--  End Col -->

			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="single_blog">
					<div class="single_blog_img">
						<img src="img/blog/2.jpg" alt="">
						<div class="blog_date text-center">
							<div class="bd_day">25</div>
							<div class="bd_month">Aug</div>
						</div>
					</div>

					<div class="blog_content">
						<h4 class="post_title">
							<a href="#">Integer tempor urna a condimentum</a>
						</h4>
						<ul class="post-bar">
							<li><i class="fa fa-user"></i> Admin</li>
							<li><i class="fa fa-comments-o"></i> <a href="#">2
									comments</a></li>
							<li><i class="fa fa-heart-o"></i> <a href="#">4 like</a></li>
						</ul>

						<p>Proin in blandit lacus. Nam pellentesque tortor eget dui
							feugiat venenatis ....</p>
					</div>
				</div>
			</div>
			<!--  End Col -->

			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="single_blog">
					<div class="single_blog_img">
						<img src="img/blog/3.jpg" alt="">
						<div class="blog_date text-center">
							<div class="bd_day">25</div>
							<div class="bd_month">Aug</div>
						</div>
					</div>

					<div class="blog_content">

						<h4 class="post_title">
							<a href="#">Vivamus velit est iaculis id tempus</a>
						</h4>
						<ul class="post-bar">
							<li><i class="fa fa-user"></i> Admin</li>
							<li><i class="fa fa-comments-o"></i> <a href="#">2
									comments</a></li>
							<li><i class="fa fa-heart-o"></i> <a href="#">4 like</a></li>
						</ul>
						<p>Proin in blandit lacus. Nam pellentesque tortor eget dui
							feugiat venenatis ....</p>
					</div>
				</div>
			</div>
			<!--  End Col -->

		</div>
	</div>
	</section>