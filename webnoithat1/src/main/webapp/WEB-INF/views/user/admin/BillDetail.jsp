<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<body>
	<c:if test="${not empty LoginInfo2 }">
		<div class="page-wrapper">
			<div class="cart shopping">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-2">
							<div class="block">
								<div class="product-list">
									<h3>Chi Tiết Hóa Đơn</h3>
									<form method="post">
										<table class="table">
											<thead>
												<tr>
													<th>Id</th>
													<th>Ảnh</th>
													<th>Tên</th>
													<th>Id Bill</th>
													<th>Tổng giá</th>
													<th>Số lượng</th>
													<th>Khác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="a" items="${BillDetail }">
													<c:forEach var="b" items="${products }">
														<c:if test="${a.id_product == b.id}">
															<tr>
																<td>${a.id }</td>
																<td><img width="100px"
																	src="<c:url value="assets/user/imgproducts/${b.img }" />"></td>
																<td>${b.name }</td>
																<td>${a.id_bills }</td>
																<td>${a.quanty }₫</td>
																<td>${a.total }</td>
																<%--  <td><a
																	href="<c:url value="/DeleteDetailAoCuoi/${a.id }" />">Xoá
																</a></td>  --%>
															</tr>
														</c:if>
													</c:forEach>
												</c:forEach>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${ empty LoginInfo2 }">
		<div style="font-size: 50px; text-align: center; margin-top: 200px">
			<div>Bạn không có quyền truy cập trang web này!!!</div>
			<a href="<c:url value="/home" />">Nhấn vào đây để quay lại</a>
		</div>
	</c:if>
</body>
