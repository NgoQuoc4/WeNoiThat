<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Thêm Sản Phẩm</title>
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
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Tên Sản Phẩm</label>
										<form:input type="text" path="name" class="form-control"
											placeholder="Nhập tên sản phẩm" />
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Hình Ảnh</label>
										<form:input type="file" path="img" class="form-control" />
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Giá</label>
										<form:input type="text" path="price" class="form-control"
											placeholder="Nhập giá" />
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Loại Sản Phẩm</label>
										<form:input type="text" path="price" class="form-control"
											placeholder="Nhập giá">
											<select id="${categorys }" class="form-control">
												<option value="1"></option>
											</select>
										</form:input>
									</div>
									<div class="form-group mb-5">
										<label for="exampleInputPassword1">Chi Tiết</label>
										<form:input type="text" path="tilte" class="form-control"
											placeholder="Nhập chi tiết sản phẩm" />
									</div>
									<button type="submit" class="btn btn-theme">Thêm</button>
									<!-- <a href="#l" class="forgot-link float-right text-primary">Quên
										mật khẩu?</a> -->
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
