<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>Giỏ hàng</title>
</head>
<body id="body">
	<div class="page-wrapper">
		<div class="cart shopping">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="block">
							<div class="product-list">
								<h3>Giỏ Hàng</h3>
								<form method="post">
									<table class="table">
										<thead>
											<tr>
												<th>Hình ảnh</th>
												<th>Sản phẩm</th>
												<th>Giá</th>
												<th>SL</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${Cart }">
												<tr>
													<td>
														<div class="product-info">
															<img width="80px"
																src="<c:url value=" assets/user/imgproducts/${item.value.product.img}"/>">
														</div>
													</td>
													<td>
														<div class="product-info">
															<p>${item.value.product.name}</p>
														</div>
													</td>
													<td>${item.value.product.price }₫</td>
													<td>${item.value.quanty}</td>
													<%-- <td><input type="number" min="0" max="1000"
														class="span1" style="max-width: 34px" placeholder="1"
														id="quanty-cart-${item.key}" size="16" type="text"
														value="${ item.value.quanty }"></td>
 --%>
													<%-- <td>
														<button data-id="${ item.key }"
															class="btn btn-mini btn-danger edit-cart" type="button">
															<span class="icon-edit"></span>
														</button>
													</td> --%>
													<td><a class="product-remove"
														href="<c:url value="/DeleteCart/${item.key }" />">Xoá</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<c:if test="${ empty LoginInfo }">
										<a style="background-color: #3e64ff; margin-bottom: 10px;"
											class="btn btn-main pull-right"
											href="<c:url value="/Register" />">Đăng nhập để thanh
											toán</a>
									</c:if>
									<c:if test="${not empty LoginInfo }">
										<a style="background-color: #3e64ff;" href="Checkout"
											class="btn btn-main pull-right">Thanh toán</a>
									</c:if>
									<span class="btn btn-main pull-right">Tổng số lượng:
										${TotalQuantyCart}</span><span class="btn btn-main pull-right">Tổng
										giá: <fmt:formatNumber type="number" groupingUsed="true"
											value="${TotalPriceCart}" />₫
									</span>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%-- 	<content tag="script"> <script>
		$(".edit-cart").on("click", function() {
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-" + id).val();
			window.location = "EditCart/" + id
			"/" + quanty;
		});
	</script> </content> --%>
</body>