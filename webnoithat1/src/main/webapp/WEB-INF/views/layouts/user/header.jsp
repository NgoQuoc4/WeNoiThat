<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<title>Harbor</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700i,900|Roboto&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="assets/user/fonts/icomoon/style.css">
<link rel="stylesheet" href="assets/user/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/user/css/animate.min.css">
<link rel="stylesheet" href="assets/user/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="assets/user/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/user/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="assets/user/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="assets/user/css/aos.css">
<link rel="stylesheet" href="assets/user/css/style.css">
</head>

<header class="site-navbar site-navbar-target bg-white" role="banner">
	<div class="container">
		<div class="row align-items-center position-relative">
			<div class="col-lg-4">
				<nav class="site-navigation text-right ml-auto " role="navigation">
					<ul
						class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
						<li class="active"><a href="home" class="nav-link">Trang
								chủ</a></li>
						<div class="btn-group">
							<a href="Products" class="nav-link">Nội Thất</a>
							<button type="button"
								class="btn dropdown-toggle dropdown-toggle-split"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"></button>
							<div class="dropdown-menu">
								<c:forEach var="item" items="${ categorys }">
									<li><a href='<c:url value="Categorys ${ item.id }"/>'
										class="nav-link"> ${ item.name }</a></li>
								</c:forEach>
							</div>
						</div>
					</ul>
				</nav>
			</div>
			<div class="col-lg-4 text-center">
				<c:if test="${ empty LoginInfo }">
					<div class="site-logo">
						<a href="home">Harbor</a>
					</div>
				</c:if>
				<c:if test="${not empty LoginInfo }">
					<div class="site-logo">
						<a href="">Hello ${LoginInfo.display_name}</a>
					</div>
				</c:if>
				<div class="ml-auto toggle-button d-inline-block d-lg-none">
					<a href="#" class="site-menu-toggle py-5 js-menu-toggle text-white"><span
						class="icon-menu h3 text-primary"></span></a>
				</div>
			</div>
			<div class="col-lg-4">
				<nav class="site-navigation text-left mr-auto " role="navigation">
					<ul
						class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
						<!-- giỏ hàng -->
						<li><a href="list_cart" class="nav-link">Giỏ hàng(<span>${ TotalQuantyCart }</span>)
						</a>${TotalPriceCart}₫</li>
						<c:if test="${ empty LoginInfo }">
							<li><a href="Register" class="nav-link">Đăng Ký</a></li>
						</c:if>
						<c:if test="${not empty LoginInfo }">
							<li><a href="Logout" class="nav-link">Đăng xuất</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>
<div class="site-wrap" id="home-section">

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
				<span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>
</div>
