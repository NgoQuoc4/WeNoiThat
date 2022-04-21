<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<style>
.pagination {
	display: flex;
	justify-content: center;
	margin-bottom: 10px;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: #3e64ff;
	color: white;
	border: 1px solid #3e64ff;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<c:if test="${ productsPaginate.size() > 0 }">
	
		<div class="site-section">
			<div class="container">
			<h3>${Caterogys.name}</h3>
				<div class="row">
					<c:forEach var="item" items="${ productsPaginate }">
						<div class="col-lg-6">
							<div class="media-02819">
								<a href="<c:url value="DetailsProduct ${item.id }"  />"
									class="img-link"> <img width="500px"
									src="<c:url value="assets/user/imgproducts/${item.img }"  />"
									alt="Image" class="img-fluid" /></a>
								<h3>
									<a href="#"> ${ item.name } </a>
								</h3>
								<span>Sản phẩm mới</span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</c:if>
	<!-- phan trang-->
	<div class="pagination">
		<c:forEach var="item" begin="1" end="${ paginateInfo.totalPage }"
			varStatus="loop">
			<c:if test="${ (loop.index ) == paginateInfo.currentPage }">
				<a
					href="<c:url value=" /Categorys ${ idCategory }/${ loop.index }"/>"
					class="active">${ loop.index }</a>
			</c:if>
			<c:if test="${ (loop.index) != paginateInfo.currentPage }">
				<a
					href="<c:url value=" /Categorys ${ idCategory }/${ loop.index }"/>">
					${ loop.index }</a>
			</c:if>
		</c:forEach>
	</div>

</body>


