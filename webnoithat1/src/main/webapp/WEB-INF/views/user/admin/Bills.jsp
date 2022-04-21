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
									<h3>Bills</h3>
									<form method="post">
										<table class="table">
											<thead>
												<tr>
													<th>User</th>
													<th>Liên hệ</th>
													<th>Tên</th> 
													<th>Địa chỉ</th>
													<th>Giá</th>
													<th>Số lượng</th>
													<th>Note</th>
													<th></th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${ Bills }">
													<tr>
														<td>${item.user}</td>
														<td>${item.phone}</td>
														<td>${item.display_name }</td>
														<td>${item.address}</td>
														<td>${item.total}₫</td>
														<td>${item.quanty}</td>
														<td>${item.note}</td>
														<td><a
															href="<c:url value="BillDetail/${item.id}" />">Xem </a></td>
														<%-- <td><a
															href="<c:url value="DeleteAoCuoiById/${item.id }" />">Xoá</a></td>
 --%>
													</tr>
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