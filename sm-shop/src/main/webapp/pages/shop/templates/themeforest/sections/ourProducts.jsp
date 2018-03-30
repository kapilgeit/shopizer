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


<section id="product_area" class="section_padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="section_title">
					<h2>
						Our <span>Products</span>
					</h2>
					<div class="divider"></div>
				</div>
			</div>
		</div>

		<div class="text-center">
			<div class="product_filter">
				<ul>
					<li class=" active filter" data-filter="all">ALL</li>
					<li class="filter" data-filter=".sale">Sale</li>
					<li class="filter" data-filter=".bslr">Bestseller</li>
					<li class="filter" data-filter=".ftrd">Featured</li>
				</ul>
			</div>

			<div class="product_item">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-sm-6 mix sale">
						<div class="single_product">
							<div class="product_image">
								<img src="img/product/1.jpg" alt="" />
								<div class="new_badge">New</div>
								<div class="box-content">
									<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>

							<div class="product_btm_text">
								<h4>
									<a href="#">Product Title</a>
								</h4>
								<div class="p_rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<span class="price">$123.00</span>

							</div>
						</div>

					</div>
					<!-- End Col -->

					<div class="col-lg-3 col-md-4 col-sm-6  mix ftrd">
						<div class="single_product">
							<div class="product_image">
								<img src="img/product/2.jpg" alt="" />
								<div class="new_badge">New</div>
								<div class="box-content">
									<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>

							<div class="product_btm_text">
								<h4>
									<a href="#">Product Title</a>
								</h4>
								<div class="p_rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<span class="price">$123.00</span>
							</div>
						</div>
					</div>
					<!-- End Col -->

					<div class="col-lg-3 col-md-4 col-sm-6  mix">
						<div class="single_product">
							<div class="product_image">
								<img src="img/product/3.jpg" alt="" />
								<div class="new_badge">New</div>
								<div class="box-content">
									<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>

							<div class="product_btm_text">
								<h4>
									<a href="#">Product Title</a>
								</h4>
								<div class="p_rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<span class="price">$123.00</span>
							</div>
						</div>
					</div>
					<!-- End Col -->

					<div class="col-lg-3 col-md-4 col-sm-6  mix sale bslr">
						<div class="single_product">
							<div class="product_image">
								<img src="img/product/4.jpg" alt="" />
								<div class="box-content">
									<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>

							<div class="product_btm_text">
								<h4>
									<a href="#">Product Title</a>
								</h4>
								<div class="p_rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<span class="price">$123.00</span>
							</div>
						</div>
					</div>
					<!-- End Col -->

					<div class="col-lg-3 col-md-4 col-sm-6  mix ftrd">
						<div class="single_product">
							<div class="product_image">
								<img src="img/product/5.jpg" alt="" />
								<div class="box-content">
									<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>

							<div class="product_btm_text">
								<h4>
									<a href="#">Product Title</a>
								</h4>
								<div class="p_rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<span class="price">$123.00</span>
							</div>
						</div>
					</div>
					<!-- End Col -->

					<div class="col-lg-3 col-md-4 col-sm-6 mix sale bslr">
						<div class="single_product">
							<div class="product_image">
								<img src="img/product/6.jpg" alt="" />
								<div class="box-content">
									<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>

							<div class="product_btm_text">
								<h4>
									<a href="#">Product Title</a>
								</h4>
								<div class="p_rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<span class="price">$123.00</span>
							</div>
						</div>
					</div>
					<!-- End Col -->

					<div class="col-lg-3 col-md-4 col-sm-6 mix sale bslr">
						<div class="single_product">
							<div class="product_image">
								<img src="img/product/7.jpg" alt="" />
								<div class="box-content">
									<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>

							<div class="product_btm_text">
								<h4>
									<a href="#">Product Title</a>
								</h4>
								<div class="p_rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<span class="price">$123.00</span>
							</div>
						</div>
					</div>
					<!-- End Col -->

					<div class="col-lg-3 col-md-4 col-sm-6 mix sale bslr">
						<div class="single_product">
							<div class="product_image">
								<img src="img/product/8.jpg" alt="" />
								<div class="box-content">
									<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
										class="fa fa-cart-plus"></i></a> <a href="#"><i
										class="fa fa-search"></i></a>
								</div>
							</div>

							<div class="product_btm_text">
								<h4>
									<a href="#">Product Title</a>
								</h4>
								<div class="p_rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<span class="price">$123.00</span>
							</div>
						</div>
					</div>
					<!-- End Col -->

				</div>
			</div>
		</div>
	</div>
	</section>