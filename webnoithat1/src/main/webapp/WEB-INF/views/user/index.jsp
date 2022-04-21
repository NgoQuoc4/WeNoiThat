<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
<div class="owl-carousel-wrapper">
		<div class="owl-carousel owl-1 ">
			<div class="ftco-cover-1"
				style="background-image: url('assets/user/images/hero_1.jpg');"></div>
			<div class="ftco-cover-1"
				style="background-image: url('assets/user/images/hero_2.jpg');"></div>
			<div class="ftco-cover-1"
				style="background-image: url('assets/user/images/hero_3.jpg');"></div>
		</div>
	</div>
	<div class="site-section">
		<div class="container">
			<div class="row mb-5 align-items-center">
				<div class="col-md-7">
					<h2 class="heading-39291 mb-0">Nổi bật</h2>
				</div>
				<div class="col-md-5 text-right">
					<p class="mb-0">
						<a href="Products" class="more-39291">Tất cả nội thất</a>
					</p>
				</div>
			</div>
			<div class="row">
				<c:forEach var="item" items="${ products }"  begin="3" end="6">
					<div class="col-lg-6">
						<div class="media-02819">
							<a href="<c:url value="DetailsProduct ${item.id }"  />" class="img-link"> <img width="500px"
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
	<div class="site-section section-4">
		<div class="container">
			<div class="row justify-content-center text-center">
				<div class="col-md-7">
					<h1>Đánh giá khách hàng</h1>
					<div class="slide-one-item owl-carousel">
						<blockquote class="testimonial-1">
							<span class="quote quote-icon-wrap"><span
								class="icon-format_quote"></span></span>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Ducimus totam sit delectus earum facere ex ea sunt, eos?</p>
							<cite><span class="text-black">Mike Dorney</span> &mdash;
								<span class="text-muted">CEO and Co-Founder</span></cite>
						</blockquote>

						<blockquote class="testimonial-1">
							<span class="quote quote-icon-wrap"><span
								class="icon-format_quote"></span></span>
							<p>Eligendi earum ad perferendis dolores, dolor quas. Ullam
								in, eaque mollitia suscipit id aspernatur rerum! Sit quibusdam
								ullam tempora quis, in voluptatum maiores veritatis recusandae!</p>
							<cite><span class="text-black">James Smith</span> &mdash;
								<span class="text-muted">CEO and Co-Founder</span></cite>
						</blockquote>
						<blockquote class="testimonial-1">
							<span class="quote quote-icon-wrap"><span
								class="icon-format_quote"></span></span>
							<p>Officia, eius omnis rem non quis eos excepturi cumque
								sequi pariatur eaque quasi nihil dicta tempore voluptate culpa,
								veritatis incidunt voluptatibus qui?</p>
							<cite><span class="text-black">Mike Dorney</span> &mdash;
								<span class="text-muted">CEO and Co-Founder</span></cite>
						</blockquote>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
