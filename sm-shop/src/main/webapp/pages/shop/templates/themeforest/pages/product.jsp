
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
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm"%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<script
	src="<c:url value="/resources/js/jquery.elevateZoom-3.0.8.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.raty.min.js" />"></script>

<jsp:include
	page="/pages/shop/templates/bootstrap/sections/breadcrumb.jsp" />


<!-- Product Details Area  -->
<div class="prdct_dtls_page_area">
	<div class="container">
		<div class="row">
			<!-- Product Details Image -->
			<div class="col-md-6 col-xs-12">
				<div class="pd_img fix">
					<a class="venobox"
						href="<c:url value="${product.image.imageUrl}"/>"> <img
						id="im-<c:out value="${product.image.id}"/>"
						alt="<c:out value="${product.description.name}"/>"
						src="<c:url value="${product.image.imageUrl}"/>" />
					</a>
				</div>
			</div>
			<!-- Product Details Content -->
			<div class="col-md-6 col-xs-12">
				<div class="prdct_dtls_content">
					<a class="pd_title" href="#">${product.description.name}</a>
					<div class="pd_price_dtls fix">
						<!-- Product Price -->
						<div class="pd_price">
							<c:choose>
								<c:when test="${product.discounted}">
									<span class="new">$ <c:out value="${product.finalPrice}" /></span>
									<span class="old">(<c:out
											value="${product.originalPrice}" />)
									</span>
								</c:when>
								<c:otherwise>
									<span class="new"> <c:out value="${product.finalPrice}" /></span>
								</c:otherwise>
							</c:choose>
						</div>

						<!-- Product Ratting -->
						<div class="pd_ratng">
							<div class="rtngs">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
					<div class="pd_text">
						<h4>overview:</h4>
						<p>${product.description.name}</p>
					</div>
					<div class="pd_img_size fix">
						<h4>size:</h4>
						<a href="#">s</a> <a href="#">m</a> <a href="#">l</a> <a href="#">xl</a>
						<a href="#">xxl</a>
					</div>
					<div class="pd_clr_qntty_dtls fix">
						<div class="pd_clr">
							<h4>color:</h4>
							<a href="#" class="active" style="background: #ffac9a;">color
								1</a> <a href="#" style="background: #ddd;">color 2</a> <a href="#"
								style="background: #000000;">color 3</a>
						</div>
						<div class="pd_qntty_area">
							<h4>quantity:</h4>
							<div class="pd_qty fix">
								<input value="1" name="qttybutton" class="cart-plus-minus-box"
									type="number">
							</div>
						</div>
					</div>
					<!-- Product Action -->
					<div class="pd_btn fix">
					<p>
						<jsp:include page="/pages/shop/common/catalog/addToCartProduct.jsp" />
						<a
							class="btn btn-default acc_btn btn_icn"><i
							class="fa fa-heart"></i></a> <a
							class="btn btn-default acc_btn btn_icn"><i
							class="fa fa-refresh"></i></a>
					</p>
					
					</div>
						
					<div class="pd_share_area fix">
						<h4>share this on:</h4>
						<div class="pd_social_icon">
							<a class="facebook" href="#"><i class="fa fa-facebook"></i></a> <a
								class="twitter" href="#"><i class="fa fa-twitter"></i></a> <a
								class="vimeo" href="#"><i class="fa fa-vimeo"></i></a> <a
								class="google_plus" href="#"><i class="fa fa-google-plus"></i></a>
							<a class="tumblr" href="#"><i class="fa fa-tumblr"></i></a> <a
								class="pinterest" href="#"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-12">
				<div class="pd_tab_area fix">
					<ul class="pd_tab_btn nav nav-tabs" role="tablist">
						<li><a class="active" href="#description" role="tab"
							data-toggle="tab">Description</a></li>
						<li><a href="#information" role="tab" data-toggle="tab">Information</a>
						</li>
						<li><a href="#reviews" role="tab" data-toggle="tab">Reviews</a>
						</li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane fade show active"
							id="description">
							${product.description.description}
						</div>

						<div role="tabpanel" class="tab-pane fade" id="information">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
								aute irure dolor in reprehenderit in voluptate velit esse cillum
								dolore eu fugiat nulla pariatur.</p>
						</div>

						<div role="tabpanel" class="tab-pane fade" id="reviews">
							<div class="pda_rtng_area fix">
								<h4>
									4.5 <span>(Overall)</span>
								</h4>
								<span>Based on 9 Comments</span>
							</div>
							<div class="rtng_cmnt_area fix">
								<div class="single_rtng_cmnt">
									<div class="rtngs">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o"></i> <span>(4)</span>
									</div>
									<div class="rtng_author">
										<h3>John Doe</h3>
										<span>11:20</span> <span>6 January 2017</span>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Utenim ad minim veniam, quis nost rud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Utenim ad minim veniam, quis nost.</p>
								</div>

							</div>
							<div class="col-md-6 rcf_pdnglft">
								<div class="rtng_cmnt_form_area fix">
									<!-- 
									<h3>Add your Comments</h3>
									<div class="rtng_form">
										<form action="#">
											<div class="input-area">
												<input type="text" placeholder="Type your name" />
											</div>
											<div class="input-area">
												<input type="text" placeholder="Type your email address" />
											</div>
											<div class="input-area">
												<textarea name="message" placeholder="Write a review"></textarea>
											</div>
											<input class="btn border-btn" type="submit"
												value="Add Review" />
										</form>
										
										
										
									</div>
									 -->
									 <jsp:include page="/pages/shop/common/merchant/contactus.jsp" />
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




<c:if test="${relatedProducts!=null}">
	<!-- Related Product Area -->
	<div class="related_prdct_area text-center">
		<div class="container">
			<!-- Section Title -->
			<div class="rp_title text-center">
				<h3>Related products</h3>
			</div>

			<div class="row text-center">

				<c:if test="${relatedProducts!=null}">
					<!-- Iterate over featuredItems -->
					<c:set var="ITEMS" value="${relatedProducts}" scope="request" />
					<jsp:include
						page="/pages/shop/templates/themeforest/sections/productBox.jsp" />
				</c:if>
				<!-- End Col -->
			</div>


		</div>
	</div>
</c:if>


