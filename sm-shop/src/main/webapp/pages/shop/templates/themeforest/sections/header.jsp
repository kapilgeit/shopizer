
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
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm"%>
<%@ taglib uri="/WEB-INF/shopizer-functions.tld" prefix="display"%>


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

<header id="header_area">
	<div class="header_top_area">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<div class="hdr_tp_left">
						<div class="call_area">
							<span class="single_con_add"><i class="fa fa-phone"></i>
								Will Update Very Soon :)</span> <span class="single_con_add"><i
								class="fa fa-envelope"></i> krbazar@pieglobalsolutions.com</span>
						</div>
					</div>
				</div>

				<!-- Add to Cart section -->


				<!-- Customer Login Section -->
				<!-- If display customer section -->
				<div class="col-xs-12 col-sm-6">
					<ul class="hdr_tp_right text-right">

						<c:if
							test="${requestScope.CONFIGS['displayCustomerSection'] == true}">
							<sec:authorize
								access="hasRole('AUTH_CUSTOMER') and fullyAuthenticated">
								<!-- logged in user -->
								<c:if test="${requestScope.CUSTOMER!=null}">
									<ul class="logon-box pull-right">
										<li id="fat-menu" class="dropdown"><a
											class="dropdown-toggle noboxshadow" data-toggle="dropdown"
											href="#"> <s:message code="label.generic.welcome"
													text="Welcome" /> <c:if
													test="${not empty requestScope.CUSTOMER.billing.firstName}">
													<c:out value="${sessionScope.CUSTOMER.billing.firstName}" />
												</c:if>
										</a>
											<ul class="dropdown-menu">
												<li><a
													onClick="javascript:location.href='<c:url value="/shop/customer/dashboard.html" />';"
													href="#"><i class="fa fa-user"></i> <s:message
															code="label.customer.myaccount" text="My account" /></a></li>
												<li class="divider"></li>
												<li><a
													onClick="javascript:location.href='<c:url value="/shop/customer/logout" />';"
													href="#"><i class="fa fa-power-off"></i> <s:message
															code="button.label.logout" text="Logout" /></a></li>
											</ul></li>
									</ul>

								</c:if>
							</sec:authorize>
							<sec:authorize
								access="!hasRole('AUTH_CUSTOMER') and fullyAuthenticated">
								<!-- no dual login -->
								<ul class="logon-box pull-right">
									<li><s:message code="label.security.loggedinas"
											text="You are logged in as" /> [<sec:authentication
											property="principal.username" />]. <s:message
											code="label.security.nologinacces.store"
											text="We can't display store logon box" /></li>
								</ul>
							</sec:authorize>
							<sec:authorize
								access="!hasRole('AUTH_CUSTOMER') and !fullyAuthenticated">
								<!-- login box -->
								<ul class="pull-right"
									style="list-style-type: none; padding-top: 8px; z-index: 500000;">
									
									<li class="account_area"><a onClick="javascript:location.href='<c:url value="/shop/customer/registration.html" />';"
												href="" role="button" class="" data-toggle="modal"><i class="fa fa-lock"></i> My Account</a></li>


										<div id="signinPane" class="dropdown-menu"
											style="padding: 15px; padding-bottom: 0px;">
											<div id="loginError" class="alert alert-error"
												style="display: none;"></div>
											<!-- form id must be login, form fields must be userName, password and storeCode -->
<!-- 
											<form id="login" method="post" accept-charset="UTF-8">
												<div class="caa_form_area">
													<div class="caa_form_group">
														<div class="login_email">
															<label><s:message code="label.username"
																	text="Username" /></label>
															<div class="controls">
																<input id="signin_userName" style="margin-bottom: 15px;"
																	type="text" name="userName" size="30" />
															</div>
														</div>
													</div>
													<div class="login_password">
														<label><s:message code="label.password"
																text="Password" /></label>
														<div class="controls">
															<input id="signin_password" style="margin-bottom: 15px;"
																type="password" name="password" size="30" />
														</div>
													</div>
													<input id="signin_storeCode" name="storeCode" type="hidden"
														value="<c:out value="${requestScope.MERCHANT_STORE.code}"/>" />
													<button type="submit" style="width: 100%"
														class="btn btn-default acc_btn" id="login-button">
														<s:message code="button.label.login" text="Login" />
													</button>
												</div>
											</form>

 -->
											<!-- Login form Complete -->
											<a
												onClick="javascript:location.href='<c:url value="/shop/customer/registration.html" />';"
												href="" role="button" class="" data-toggle="modal"><s:message
													code="label.register.notyetregistered"
													text="Not yet registered ?" /></a>
										</div></li>
								</ul>
							</sec:authorize>
						</c:if>


					</ul>
				</div>


			</div>
		</div>
	</div>
	<!--  HEADER START  -->

	<div class="header_btm_area">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3">
					<c:choose>
						<c:when test="${not empty requestScope.MERCHANT_STORE.storeLogo}">
							<a class="logo" href="/shop/"> <img class="logoImage"
								src="<sm:storeLogo/>" />
							</a>
						</c:when>
						<c:otherwise>
							<h1>
								<a href="<c:url value="/shop/"/>"> <c:out
										value="${requestScope.MERCHANT_STORE.storename}" />
								</a>
							</h1>
						</c:otherwise>
					</c:choose>
				</div>
				<!--  End Col -->

				<div class="col-xs-12 col-sm-12 col-md-9 text-right">
					<div class="menu_wrap">
						<div class="main-menu">
							<nav>
								<ul>



									<li><a href="/shop">home</a></li>

									<c:forEach items="${requestScope.TOP_CATEGORIES}"
										var="category">
										<li><a
											href="<c:url value="/shop/category/${category.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${category.id}"/>">
												<c:out value="${category.description.name}"></c:out> <!-- i class="fa fa-angle-down"></i> -->
										</a></li>
										<c:if test="${fn:length(category.children)>0}">
											<ul class="sub-menu">
												<c:forEach items="${category.children}" var="child">
													<li><a
														href="<c:url value="/shop/category/${child.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${child.id}"/>">
															<c:out value="${child.description.name}" />
													</a></li>
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
									<li><a href="/shop">home</a></li>
									<c:forEach items="${requestScope.TOP_CATEGORIES}"
										var="category">
										<li><a
											href="<c:url value="/shop/category/${category.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${category.id}"/>"><c:out
													value="${category.description.name}"></c:out><i
												class="fa fa-angle-down"></i></a></li>
										<c:if test="${fn:length(category.children)>0}">
											<ul class="sub-menu">
												<c:forEach items="${category.children}" var="child">
													<li><a
														href="<c:url value="/shop/category/${child.description.friendlyUrl}.html"/><sm:breadcrumbParam categoryId="${child.id}"/>">
															<c:out value="${child.description.name}" />
													</a></li>
												</c:forEach>
											</ul>
										</c:if>
									</c:forEach>
								</ul>
							</nav>
						</div>
						<!--  End mobile-menu -->
						<!-- Start search form -->
						<div class="right_menu">
							<ul class="nav justify-content-end">
								<li>
									<div class="search_icon">
										<i class="fa fa-search search_btn" aria-hidden="true"></i>
										<div class="search-box">
											<form id="searchForm"
												action="<c:url value="/shop/search/search.html"/>"
												method="post">
												<div class="input-group">
													<input id="searchField" name="q" type="text"
														class="form-control"
														placeholder="<s:message code="label.search.searchQuery" text="Search query" />"
														autocomplete="off" spellcheck="false" dir="auto"
														value="<c:out value="${q}"/>" />
													<button id="searchButton" type="submit"
														class="btn btn-default">
														<i class="fa fa-search"></i>
													</button>
												</div>
											</form>
										</div>
									</div>
								</li>
								<li>
									<div class="cart_menu_area">
										<c:if test="${not fn:contains(requestScope['javax.servlet.forward.servlet_path'], 'order') && not fn:contains(requestScope['javax.servlet.forward.servlet_path'], 'cart')}">
										
											<div id="miniCart" class="cart_icon">
												<a style="box-shadow: none; color: FF8C00;" href="#"
													data-toggle="dropdown"
													class="open noboxshadow dropdown-toggle" id="open-cart"><i
													class="fa fa-shopping-bag " aria-hidden="true"></i></a>
												<jsp:include page="/pages/shop/common/cart/minicartinfo.jsp" />
												<!-- 
												<ul class="dropdown-menu minicart" id="minicartComponent">
												 -->
												<ul class="dropdown-menu minicart" id="minicartComponent">
													<li><jsp:include
															page="/pages/shop/common/cart/minicart.jsp" /></li>
												</ul>
											</div>
										</c:if>
									</div>
								</li>
							</ul>
						</div>
						<!-- End Search Form -->



					</div>
				</div>
				<!--  End Col -->
			</div>
		</div>
	</div>
</header>