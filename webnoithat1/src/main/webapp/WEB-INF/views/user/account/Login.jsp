<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<title>Đăng Nhập</title>
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
	<div style="padding-left: 400px; padding-top: 20px;" class="container">
		<div class="row justify-content-center">
			<div class="col-xl-10">
				<div class="card border-0">
					<div class="card-body p-0">
						<div class="row no-gutters">
							<div class="col-lg-6">
								<div class="p-5">
									<div class="mb-5">
										<h3 style="text-align: center;"
											class="h4 font-weight-bold text-theme">Đăng nhập</h3>
									</div>
									<h1>${statusLogin}</h1>
									<form:form action="Login" method="POST" modelAttribute="user">
										<div class="form-group">
											<label for="exampleInputEmail1">Email</label>
											<form:input type="email" path="user" class="form-control"
												placeholder="Nhập Email của bạn" required="true" pattern="[A-Za-z].{8,}" />
										</div>
										<div class="form-group mb-5">
											<label for="exampleInputPassword1">Mật khẩu</label>
											<form:input type="password" path="password"
												class="form-control" placeholder="Nhập mật khẩu của bạn" required="true" />
										</div>
										<button type="submit" class="btn btn-theme">Đăng nhập</button>
										<!-- <a href="#l" class="forgot-link float-right text-primary">Quên
											mật khẩu?</a> -->
									</form:form>
									
								</div>
							</div>
						</div>

					</div>
					<!-- end card-body -->
				</div>
				<!-- end card -->

				<p class="text-muted text-center mt-3 mb-0">
					Bạn chưa có tài khoản? <a href="<c:url value="Register" />"
						class="text-primary ml-1">Register</a>
				</p>

				<!-- end row -->

			</div>
			<!-- end col -->
		</div>
		<!-- Row -->
	</div>
</body>
