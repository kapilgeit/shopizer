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
<%@ taglib uri="/WEB-INF/shopizer-functions.tld" prefix="display" %> 

<!-- TT Typeahead js files -->
<script src="<c:url value="/resources/js/hogan.js" />"></script>
<script src="<c:url value="/resources/js/typeahead.min.js" />"></script>

<script type="text/javascript">

$(document).ready(function() { 

	$('#searchField').typeahead({
		name: 'shopizer-search',
		<c:if test="${requestScope.CONFIGS['useDefaultSearchConfig'][requestScope.LANGUAGE.code]==true}">
		  <c:if test="${requestScope.CONFIGS['defaultSearchConfigPath'][requestScope.LANGUAGE.code]!=null}">
		prefetch: '<c:out value="${requestScope.CONFIGS['defaultSearchConfigPath'][requestScope.LANGUAGE.code]}"/>',
		  </c:if>
	    </c:if>


	    remote: {
    		url: '<c:url value="/services/public/search/${requestScope.MERCHANT_STORE.code}/${requestScope.LANGUAGE.code}/autocomplete.json"/>?q=%QUERY',
        	filter: function (parsedResponse) {
            	// parsedResponse is the array returned from your backend
            	console.log(parsedResponse);

            	// do whatever processing you need here
            	return JSON.parse(parsedResponse);
        	}
    	},
		template: [
		'<p class="name">{{name}}</p>',
		'<p class="description">{{description}}</p>'
		].join(''),
		engine: Hogan
		});
	
	
	

});

</script>

<c:set var="req" value="${request}" />
 
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>




<div class="header_btm_area">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3">
				<c:choose>
	                <c:when test="${not empty requestScope.MERCHANT_STORE.storeLogo}">
						<a class="logo" href="index.html"> <img alt=""
						src="<sm:storeLogo/>"></a>
					</c:when>
					<c:otherwise>
						<h1>
	               			<a href="<c:url value="/shop/"/>">
	               				<c:out value="${requestScope.MERCHANT_STORE.storename}"/>
	               			</a>  
               			</h1>
					</c:otherwise>
				</div>
				<!--  End Col -->

				<div class="col-xs-12 col-sm-12 col-md-9 text-right">
					<div class="menu_wrap">
						<div class="main-menu">
							<nav>
							<ul>
								<li><a href="<c:url value="/shop"/>">home</a></li>
								
								<c:forEach items="${requestScope.TOP_CATEGORIES}" var="category">
									<li><a href="<c:url value="/shop/category/${category.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${category.id}"/>"><c:out value="${category.description.name}"></c:out><i class="fa fa-angle-down"></i></a></li>
									<c:if test="${fn:length(category.children)>0}">
										<ul class="sub-menu">
											<c:forEach items="${category.children}" var="child">
												<li><a href="<c:url value="/shop/category/${child.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${child.id}"/>">
												<c:out value="${child.description.name}" /></a></li>
											</c:forEach>
										</ul>
									</c:if>
								</c:forEach>

							</ul>
							</nav>
						</div>
						<!--  End Main Menu -->

						<div class="mobile-menu text-right ">
							<nav>
							<ul>
								<li><a href="<c:url value="/shop"/>">home</a></li>
								<c:forEach items="${requestScope.TOP_CATEGORIES}" var="category">
									<li><a href="<c:url value="/shop/category/${category.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${category.id}"/>"><c:out value="${category.description.name}"></c:out><i class="fa fa-angle-down"></i></a></li>
									<c:if test="${fn:length(category.children)>0}">
										<ul>
											<c:forEach items="${category.children}" var="child">
												<li><a href="<c:url value="/shop/category/${child.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${child.id}"/>">
												<c:out value="${child.description.name}" /></a></li>
											</c:forEach>
										</ul>
									</c:if>
								</c:forEach>
							</ul>
							</nav>
						</div>
						<!--  End mobile-menu -->

						<div class="right_menu">
							<ul class="nav justify-content-end">
								<li>
									
									
									 <div id="searchGroup" class="btn-group pull-right">
											<form id="searchForm" class="form-inline" method="post" action="<c:url value="/shop/search/search.html"/>">
												<input id="searchField" class="tt-query" name="q" type="text" placeholder="<s:message code="label.search.searchQuery" text="Search query" />" autocomplete="off" spellcheck="false" dir="auto" value="<c:out value="${q}"/>">
												<button id="searchButton" class="btn" type="submit"><s:message code="label.generic.search" text="Search" /></button>
											</form>
										</div>
									
									<!--  
									<div class="search_icon">
										<i class="fa fa-search search_btn" aria-hidden="true"></i>
										<div class="search-box">
											<form action="#" method="get">
												<div class="input-group">
													<input type="text" class="form-control"
														placeholder="enter keyword" />
													<button type="submit" class="btn btn-default">
														<i class="fa fa-search"></i>
													</button>
												</div>
											</form>
										</div>
									</div>-->
								</li>

								<li>
									<div class="cart_menu_area">
										<div class="cart_icon">
											<a href="#"><i class="fa fa-shopping-bag "
												aria-hidden="true"></i></a> <span class="cart_number">2</span>
										</div>


										<!-- Mini Cart Wrapper -->
										<div class="mini-cart-wrapper">
											<!-- Product List -->
											<div class="mc-pro-list fix">
												<div class="mc-sin-pro fix">
													<a href="#" class="mc-pro-image float-left"><img
														src="img/mini-cart/1.jpg" alt="" /></a>
													<div class="mc-pro-details fix">
														<a href="#">This is Product Name</a> <span>1x$25.00</span>
														<a class="pro-del" href="#"><i
															class="fa fa-times-circle"></i></a>
													</div>
												</div>
												<div class="mc-sin-pro fix">
													<a href="#" class="mc-pro-image float-left"><img
														src="img/mini-cart/2.jpg" alt="" /></a>
													<div class="mc-pro-details fix">
														<a href="#">This is Product Name</a> <span>1x$25.00</span>
														<a class="pro-del" href="#"><i
															class="fa fa-times-circle"></i></a>
													</div>
												</div>
											</div>
											<!-- Sub Total -->
											<div class="mc-subtotal fix">
												<h4>
													Subtotal <span>$50.00</span>
												</h4>
											</div>
											<!-- Cart Button -->
											<div class="mc-button">
												<a href="#" class="checkout_btn">checkout</a>
											</div>
										</div>
									</div>

								</li>
							</ul>
						</div>
					</div>
				</div>
				<!--  End Col -->
			</div>
		</div>
	</div>
	
	</header>