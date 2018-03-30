
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
<c:forEach items="${requestScope.ITEMS}" var="product">
	<div class="col-lg-3 col-md-4 col-sm-6">
		<div class="single_product">
			<div class="product_image">
				<img
					src="<sm:shopProductImage imageName="${product.image.imageName}" sku="${product.sku}"/>"
					alt="" />
				<div class="box-content">
					<a href="#"><i class="fa fa-heart-o"></i></a> 
					<a class="addToCart" href="#" productId="${product.id}"><i class="fa fa-cart-plus"></i></a> 
					<a href="#"><i class="fa fa-search"></i></a>
				</div>
			</div>
<!-- 
			<c:choose>
				<c:when test="${requestScope.FEATURED==true}">
					<c:if
						test="${requestScope.CONFIGS['displayAddToCartOnFeaturedItems']==true}">/ 
							<a class="addToCart" href="#" productId="${product.id}"> <s:message
								code="button.label.addToCart" text="Add to cart" />
						</a>
					</c:if>
				</c:when>
				<c:otherwise>/ <a class="addToCart" href="#"
						productId="${product.id}"><s:message
							code="button.label.addToCart" text="Add to cart" /></a>
				</c:otherwise>
			</c:choose>

 -->

			<div class="product_btm_text">
				<h4>
					<a
						href="<c:url value="/shop/product/" /><c:out value="${product.description.friendlyUrl}"/>.html<sm:breadcrumbParam productId="${product.id}"/>"><c:out
							value="${product.description.name}" /></a>
				</h4>
				<div class="p_rating">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i>
				</div>

				

				<span class="price"><c:out value="${product.finalPrice}" /></span>
			</div>
		</div>
	</div>
</c:forEach>
