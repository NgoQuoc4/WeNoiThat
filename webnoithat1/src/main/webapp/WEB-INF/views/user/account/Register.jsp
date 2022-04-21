<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Đăng ký</title>
</head>
<body>
	<style>
.text-theme {
	color: #5369f8 !important;
}

.btn-theme {
	background-color: #5369f8;
	border-color: #5369f8;
	color: #fff;
}
</style>
	<div style="padding-left: 400px; padding-top: 20px;" id="main-wrapper"
		class="container">
		<div class="row justify-content-center">
			<div class="card border-0">
				<div class="card-body p-0">
					<div class="row no-gutters">
						<div class="col-lg-6">
							<div class="p-5">
								<div class="mb-5">
									<h3 style="text-align: center;"
										class="h4 font-weight-bold text-theme">Đăng ký</h3>
								</div>
								<h1>${status}</h1>
								<form:form action="Register" method="POST" modelAttribute="user">
									<div class="form-group">
										<label for="exampleInputEmail1">Email</label>
										<form:input type="email" path="user" class="form-control"
											placeholder="Nhập Email của bạn" required="true" pattern="[A-Za-z].{8,}"/>
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Mật khẩu</label>
										<form:input type="password" path="password"
											class="form-control" placeholder="Nhập mật khẩu của bạn"  required="true" />
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Họ và Tên</label>
										<form:input type="text" path="display_name"
											class="form-control" placeholder="Nhập họ và tên của bạn" required="true"/>
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Địa chỉ</label>
										<form:input type="text" path="address" class="form-control"
											placeholder="Nhập địa chỉ của bạn" />
									</div>
									<button type="submit" class="btn btn-theme">Đăng ký</button>
									<!-- <a href="#l" class="forgot-link float-right text-primary">Quên
										mật khẩu?</a> -->
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<p class="text-muted text-center mt-3 mb-0">
				Bạn đã có tài khoản? <a href="<c:url value="Login" />"
					class="text-primary ml-1">Login</a>
			</p>
		</div>
	</div>
</body>
