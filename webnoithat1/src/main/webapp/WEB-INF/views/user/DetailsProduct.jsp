<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Sản phẩm</title>
</head>
<body>
<style>
.table {
	width: 100%
}
.table, th, td {
	border: 5px solid #ffc107;
	font-size: 20px;
	text-align: center;
}
</style>
	<!-- Modal Cart-->
	<div class="modal-dialog " role="document">
		<div class="modal-content">
			<div class="modal-body">
				<div class="row">
					<div class="col-lg-8">
						<div class="modal-image">
							<img class="img-fluid "
								src="<c:url value="assets/user/imgproducts/${product.img }"  />"
								alt="Image" />
						</div>
					</div>
					<div class="col-md-10 col-sm-6 col-xs-12" style="margin-top: 10px">
						<form class="product-short-details" method="get"
							action="<c:url  value="/AddCart/${product.id }" />">
							<h2 class="product-title">${product.name }</h2>
							<p class="product-price">Giá: ${product.price} ₫</p>
							<%-- <h6>Số lượng</h6><td><input type="number" min="0" max="1000"
														class="span1" style="max-width: 34px" placeholder="1"
														id="appendedInputButtons" size="16" type="text"
														value="${ item.value.quanty }"></td> --%>
							<p class="product-price">Chi tiết: ${product.tilte}</p>
							<button style="color: red" type="submit" class="btn btn-main">Thêm
								Vào Giỏ Hàng</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row mb-5 align-items-center">
			<div class="col-md-7">
				<h2 class="heading-39291 mb-0">Sản phẩm liên quan</h2>
			</div>
		</div>
		<div class="row">
			<c:forEach var="a" items="${productByIDCategory}" begin="5" end="6">
				<div class="modal-dialog " role="document">
					<div class="modal-content">
						<div class="modal-body">
							<div class="row">
								<div class="col-md-3 col-sm-6 col-xs-12">
									<div class="modal-image">
										<a href="<c:url value="DetailsProduct ${a.id }"  />"
											class="img-link"> <img class="img-fluid"
											src="<c:url value="assets/user/imgproducts/${a.img }" />"
											alt="product-img" /></a>
									</div>
								</div>
								<div class="col-md-5 col-sm-6 col-xs-12"
									style="margin-bottom: 40px">
									<form class="product-short-details" method="get"
										action="<c:url value="/AddCart/${a.id }" />">
										<h2 class="product-title">${a.name }</h2>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>