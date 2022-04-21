<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	<c:if test="${not empty LoginInfo2 }">
		<div class="page-wrapper">
			<div class="cart shopping">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-2">
							<div class="block">
								<div class="product-list">
									<h3>Tất Cả Loại</h3>
									<form method="post">
										<table class="table">
											<thead>
												<tr>
													<th>Id</th>
													<th>Loại SP</th>
													<th></th>
													<th></th>						
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${ categorys }">
													<tr>
														<td>${item.id}</td>
														<td>${item.name}</td>															
													 <td><a href="<c:url value="editproducts/${item.id}" />">Sửa </a></td>
														<td><a
															href="<c:url value="" />">Xoá</a></td> 
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
