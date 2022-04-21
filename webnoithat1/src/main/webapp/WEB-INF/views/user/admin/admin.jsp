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
									<h3>Account</h3>
									<form method="post">
										<table class="table">
											<thead>
												<tr>
													<th>Id User</th>
													<th>User</th>
													<th>Tên</th>
													<th>Địa chỉ</th>
													<th>Role</th>
													<th></th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${ user }">
													<tr>
														<td>${item.id}</td>
														<td>${item.user}</td>
														<td>${item.display_name }</td>
														<td>${item.address}</td>
														<td>${item.id_role}</td>
														<td><a href="<c:url value="EditUsers/${item.id}" />">Sửa </a></td>
														<td><a
															href="<c:url value="DeleteUsers/${item.id}" />">Xoá</a></td>
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
			<a href="<c:url value="/home" />">Nhấn vào đây để đi ra đi</a>
		</div>
	</c:if>
</body>

