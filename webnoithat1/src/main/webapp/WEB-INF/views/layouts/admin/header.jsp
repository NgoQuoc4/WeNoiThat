<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<title>Harbor &mdash; Website Template by Colorlib</title>
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
<header style="margin-bottom: 100px;"
	class="site-navbar site-navbar-target bg-white" role="banner">
	<div class="container">
		<div class="row align-items-center position-relative">
			<div class="col-lg-4">
				<nav class="site-navigation text-right ml-auto " role="navigation">
					<ul
						class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
						<li class="active"><a href="admin" class="nav-link">Tài
								khoản </a></li>
						<div class="btn-group">
							<a href=qlproducts class="nav-link">QL Sản Phẩm</a> <a
								href=qlcategorys class="nav-link">QL Loại SP</a>
						</div>
					</ul>
				</nav>
			</div> 
			<div class="col-lg-4 text-center">
				<div class="site-logo">
					<a href="admin">Harbor</a>
				</div>
				<div class="ml-auto toggle-button d-inline-block d-lg-none">
					<a href="#" class="site-menu-toggle py-5 js-menu-toggle text-white"><span
						class="icon-menu h3 text-primary"></span></a>
				</div>
			</div>
			<div class="col-lg-4">
				<nav class="site-navigation text-left mr-auto " role="navigation">
					<ul
						class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
						<li><a href="Bills" class="nav-link">Bills</a></li>
						<li><a class="nav-link" href="<c:url value="Logout" />">Đăng
								xuất</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>
