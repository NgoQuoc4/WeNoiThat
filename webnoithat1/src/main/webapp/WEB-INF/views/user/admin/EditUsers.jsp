<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<body>
	<c:if test="${not empty LoginInfo2 }">
		<div class="page-wrapper">
			<div class="checkout shopping">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<div class="block billing-details">
								<h4 class="widget-title">Thông tin thanh toán</h4>
								<form:form action="${user.id }" method="POST"
									modelAttribute="user">
									<div class="form-group">
										<label for="exampleInputEmail1">Email</label>
										<form:input type="email" path="user" class="form-control"
											placeholder="Nhập Email của bạn" required="true"
											pattern="[A-Za-z].{8,}" />
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Họ và Tên</label>
										<form:input type="text" path="display_name"
											class="form-control" placeholder="Nhập họ và tên của bạn"
											required="true" />
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Địa chỉ</label>
										<form:input type="text" path="address" class="form-control"
											placeholder="Nhập địa chỉ của bạn" />
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Role</label>
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
			<a href="<c:url value="/home" />">Nhấn vào đây để quay lại</a>
		</div>
	</c:if>
</body>