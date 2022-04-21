<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
	<c:if test="${not empty LoginInfo2 }">

		<div class="page-wrapper">
			<div class="checkout shopping">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<div class="block billing-details">
								<h4 class="widget-title">Thông tin thanh toán</h4>

								<form:form action="${products.id }" method="POST" modelAttribute="user">
									<div class="form-group">
										<label for="exampleInputPassword1">Tên SP</label>
										<form:input type="email" path="user" class="form-control"
											placeholder="Nhập tên sản phẩm" required="true"
											pattern="[A-Za-z].{8,}" />
									</div>
									
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Giá</label>
										<form:input type="text" path="display_name"
											class="form-control" placeholder="Nhập giá"
											required="true" />
									</div>
									
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Loại SP</label>
										<form:input type="text" path="address" class="form-control"
											placeholder="Nhập địa chỉ của bạn" />
									</div>							
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Chi tiết</label>
										<form:input type="text" path="id_role" class="form-control"
											placeholder="Nhập địa chỉ của bạn" />
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Hình ảnh</label>
										<form:input type="text" path="id_role" class="form-control"
											placeholder="Nhập địa chỉ của bạn" />
									</div>
									<button type="submit" class="btn btn-theme">Xác nhận</button>
								</form:form>
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
			<a href="<c:url value="/Home" />">Nhấn vào đây để quay lại</a>
		</div>
	</c:if>
</body>