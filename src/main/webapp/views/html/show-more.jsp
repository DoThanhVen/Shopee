<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.poly.Bean.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shoppe</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/icons/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" href="/css/style.css">

<link rel="stylesheet" href="/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="/owlcarousel/assets/owl.theme.default.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="/owlcarousel/owl.carousel.min.js"></script>
<style>
.today-suggestions {
	padding-top: 150px;
}

.today-suggestions .content-heading {
	margin-bottom: 30px;
	position: relative;
}

hr {
	position: absolute;
	border-top: 1px dotted rgba(0, 0, 0, .7);
	width: 100%;
	left: 0;
	top: 50%;
	padding: 0;
	margin: 0;
	z-index: 1;
}

.today-suggestions .content-heading .content {
	display: inline-block;
	background-color: #ee4d2d;
	color: white;
	padding: 15px 20px;
	border-radius: 10px;
	font-size: 20px;
	z-index: 200;
	cursor: default;
}

.today-suggestions nav li {
	margin: 0 20px;
}

.today-suggestions nav li a {
	padding: 4px 17px;
	background-color: rgba(0, 0, 0, 0);
	border: none;
	border-radius: 4px;
	font-size: 20px;
	color: rgba(0, 0, 0, 0.5);
}

.today-suggestions nav li a:hover {
	color: #ff7337;
	background-color: rgba(0, 0, 0, 0);
}

.today-suggestions nav li a:active, .today-suggestions nav li a:focus {
	background-color: #ff7337;
	color: white;
	border: none;
}

.footer {
	margin-top: 20px;
}
</style>
</head>
<body ng-app="myapp">
	<div ng-show="loading">Loading...</div>
	<div class="container-all-web" ng-controller="myCtrl">
		<div class="container-header-nav container-fluid">
			<nav class="navbar navbar-expand-lg navbar-warning">
				<div class="container-fluid container-nav">
					<div class="container-left">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="#">Kênh Người Bán</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Trở
									thành Người bán Shoppee</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									Tải ứng dụng </a>
								<ul class="dropdown-menu" aria-labelledby="">
									<div class="top">
										<img src="/images/QR.png" style="width: 200px; height: 200px;"
											alt="">
									</div>
									<div class="bottom">
										<img src="/images/download-1.png" alt=""> <img
											src="/images/download-2.png" alt=""> <img
											src="/images/download-3.png" alt="">
									</div>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="#"> <label
									for="">Kết nối</label>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="bi bi-facebook"></i></a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="bi bi-instagram"></i></a></li>
						</ul>
					</div>
					<div class="container-right">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="bi bi-bell"></i> Thông Báo</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="bi bi-question-circle"></i> Hỗ Trợ</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									Tiếng Việt </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#">Tiếng Việt</a></li>
									<li><a class="dropdown-item" href="#">Tiếng Anh</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link"
								href="/home/sign-up">Đăng Kí</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/home/sign-in">Đăng Nhập</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<header class="header row ">
				<div class="col-sm-2 align-self-center">
					<a href="/home/index"><img src="/images/logoshoppee.png"
						style="width: 80%; color: white;" alt=""></a>
				</div>
				<div class="col-sm-8 align-self-center">
					<form class="col-sm-12" role="search">
						<div class="search">
							<div>
								<div class="search-2">
									<i class='bx bxs-map'></i> <input type="text"
										placeholder="Đăng ký và nhận voucher bạn mới đến 70k!">
									<button>
										<i class="bi bi-search"></i>
									</button>
								</div>
							</div>
						</div>
					</form>
					<nav class="navbar navbar-expand-lg bg-body-tertiary">
						<div class="container-fluid">
							<div class="collapse navbar-collapse" id="navbarNav">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="#">Túi
											Xách Nữ</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Áo
											Khoác</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Dép</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Áo
											Croptop</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Áo
											Khoác Nam</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Giày
											Nam</a></li>
									<li class="nav-item"><a class="nav-link" href="#">Váy</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">LEGO</a>
									</li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
				<div class="col-sm-1 align-self-center">
					<a href="/home/cart"><i class="bi bi-cart"
						style="font-size: 24px; color: white;"></i></a>

				</div>
			</header>
		</div>
		<div class="today-suggestions mt-100 row">
			<div class="content-heading col-sm-10 mx-auto text-center">
				<h1 class="content">Tất Cả</h1>
				<hr>
			</div>
			<div class="col-sm-10 mx-auto p-0">
				<ul class="list-item row">
					<c:forEach var="item" items="${page.content}">
						<li class="item"><a href="/product/info/${item.id}">
								<div class="image">
									<div class="top">
										<span class="percent">${item.sale}%</span> <span
											class="reduction">GIẢM</span>
									</div>
									<img src="/images/products/${item.image}" style="width: 100%;"
										alt="">
								</div>
								<div class="content">
									<div class="info-item">
										<c:set var="maxLength" value="40" />
										<c:if test="${fn:length(item.name) > maxLength}">
											<c:set var="shortStr"
												value="${item.name.substring(0, maxLength)}..." />
										</c:if>
										<c:if test="${fn:length(item.name) <= maxLength}">
											<c:set var="shortStr" value="${item.name}" />
										</c:if>
										<p>${shortStr}</p>
									</div>
									<div class="super-flash-sale">Flash Sale</div>
									<div
										class="sell-item d-flex justify-content-between align-items-baseline">
										<div class="price">${String.format('%,.0f', item.price-(item.sale*item.price/100))}đ</div>
										<div class="amount">
											<s>${String.format('%,d',item.price)}đ</s>
										</div>
									</div>
								</div>
								<div class="shopee-item-card">Chi tiết sản phẩm</div>
						</a></li>
					</c:forEach>
				</ul>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link"
							aria-label="First" href="/product/page?p=0"> << </a></li>
						<li class="page-item"><a class="page-link"
							aria-label="Previous" href="/product/page?p=${page.number-1}">
								< </a></li>
						<li class="page-item disabled"><a class="page-link"
							aria-label="Previous"> ${page.number + 1} </a></li>
						<li class="page-item"><a class="page-link"
							href="/product/page?p=${page.number+1}" aria-label="Next"> >
						</a></li>
						<li class="page-item"><a class="page-link" aria-label="Last"
							href="/product/page?p=${page.totalPages-1}"> >> </a></li>
					</ul>
				</nav>
			</div>

		</div>
		<div class="footer">
			<div class="content-footer">
				<div class="p3 mx-auto">
					<div class="row mx-auto top">
						<div class="column-1">
							<div class="heading">CHĂM SÓC KHÁCH HÀNG</div>
							<ul class="list-item">
								<li><a href="#">Trung Tâm Trợ Giúp</a></li>
								<li><a href="#">Shopee Blog</a></li>
								<li><a href="#">Shopee Mall</a></li>
								<li><a href="#">Hướng Dẫn Mua Hàng</a></li>
								<li><a href="#">Hướng Dẫn Bán Hàng</a></li>
								<li><a href="#">Thanh Toán</a></li>
								<li><a href="#">Shopee Xu</a></li>
								<li><a href="#">Vận Chuyển</a></li>
								<li><a href="#">Trả Hàng & Hoàn Tiền</a></li>
								<li><a href="#">Chăm Sóc Khách Hàng</a></li>
								<li><a href="#">Chính Sách Bảo Hàng</a></li>
							</ul>
						</div>
						<div class="column-2">
							<div class="heading">VỀ SHOPEE</div>
							<ul class="list-item">
								<li><a href="#">Giới Thiệu Về Shopee Việt Nam</a></li>
								<li><a href="#">Tuyển Dụng</a></li>
								<li><a href="#">Điều Khoản Shopee</a></li>
								<li><a href="#">Chính Sách Bảo Mật</a></li>
								<li><a href="#">Chính Hãng</a></li>
								<li><a href="#">Kênh Người Bán</a></li>
								<li><a href="#">Flash Sales</a></li>
								<li><a href="#">Chương Trình Tiếp Thị Liên Kết Shopee</a></li>
								<li><a href="#">Liên Hệ Với Truyền Thông</a></li>
							</ul>
						</div>
						<div class="column-3">
							<div class="heading">VỀ SHOPEE</div>
							<ul class="list-item">
								<li><a href="#"><img src="/images/pay-1.png" alt=""></a></li>
								<li><a href="#"><img src="/images/pay-2.png" alt=""></a></li>
								<li><a href="#"><img src="/images/pay-3.png" alt=""></a></li>
								<li><a href="#"><img src="/images/pay-4.png" alt=""></a></li>
								<li><a href="#"><img src="/images/pay-5.png" alt=""></a></li>
								<li><a href="#"><img src="/images/pay-6.png" alt=""></a></li>
								<li><a href="#"><img src="/images/pay-7.png" alt=""></a></li>
								<li><a href="#"><img src="/images/pay-9.png" alt=""></a></li>
							</ul>
							<div class="heading">ĐƠN VỊ VẬN CHUYỂN</div>
							<ul class="list-item">
								<li><a href="#"><img src="/images/shipper-1.png" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-2.png" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-3.jpg" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-4.png" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-5.png" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-6.png" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-7.png" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-8.png" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-9.png" alt=""></a></li>
								<li><a href="#"><img src="/images/shipper-10.png"
										alt=""></a></li>
							</ul>
						</div>
						<div class="column-4">
							<div class="heading">THEO DÕI CHÚNG TÔI TRÊN</div>
							<ul class="list-item">
								<li><i class="bi bi-facebook"></i> <a href="#">Facebook</a></li>
								<li><i class="bi bi-instagram"></i> <a href="#">Instagram</a></li>
								<li><i class="bi bi-linkedin"></i> <a href="#">LinkedIn</a></li>
							</ul>
						</div>
						<div class="column-5">
							<div class="heading">TẢI ỨNG DỤNG SHOPEE NGAY THÔI</div>
							<ul class="list-item">
								<div class="QR">
									<li><a href="#"><img src="/images/QR.png" alt=""></a></li>
								</div>
								<div class="download">
									<li><a href="#"><img src="/images/download-1.png"
											alt=""></a></li>
									<li><a href="#"><img src="/images/download-2.png"
											alt=""></a></li>
									<li><a href="#"><img src="/images/download-3.png"
											alt=""></a></li>
								</div>
							</ul>
						</div>
					</div>
					<div class="bottom">
						<div class="bottom-left">© 2023 Shopee. Tất cả các quyền
							được bảo lưu.</div>
						<div class="bottom-right">
							Quốc gia & Khu vực: Singapore <span>&nbsp|&nbsp</span> Indonesia<span>&nbsp|&nbsp</span>
							Đài Loan<span>&nbsp|&nbsp</span> Thái Lan<span>&nbsp|&nbsp</span>
							Malaysia<span>&nbsp|&nbsp</span> Việt Nam<span>&nbsp|&nbsp</span>
							Philippines<span>&nbsp|&nbsp</span> Brazil<span>&nbsp|&nbsp</span>
							México<span>&nbsp|&nbsp</span> Colombia<span>&nbsp|&nbsp</span>
							Chile<span>&nbsp|&nbsp</span> Poland
						</div>
					</div>
				</div>
				<div class="p4 mx-auto">
					<div class="content">
						<div class="row-1">
							<ul class="menu">
								<li><a href="#">CHÍNH SÁCH BẢO MẬT</a></li>
								<span>&nbsp|&nbsp</span>
								<li><a href="#">QUY CHẾ HOẠT ĐỘNG</a></li>
								<span>&nbsp|&nbsp</span>
								<li><a href="#">CHÍNH SÁCH VẬN CHUYỂN</a></li>
								<span>&nbsp|&nbsp</span>
								<li><a href="#">CHÍNH SÁCH TRẢ HÀNG VÀ HOÀN TIỀN</a></li>
							</ul>
						</div>
						<div class="row-2">
							<ul class="menu">
								<li><a href="#"><img src="/images/logoCCDV.png" alt=""></a></li>
								<li><a href="#"><img src="/images/logoCCDV.png" alt=""></a></li>
								<li><a href="#"><img src="/images/logoCCDV.png" alt=""></a></li>
							</ul>
						</div>
						<div class="row-3 text-center" style="padding-bottom: 20px;">
							Công ty TNHH Shopee</div>
						<div class="row-3 text-center">Địa chỉ: Tầng 4-5-6, Tòa nhà
							Capital Place, số 29 đường Liễu Giai, Phường Ngọc Khánh, Quận Ba
							Đình, Thành phố Hà Nội, Việt Nam. Tổng đài hỗ trợ: 19001221 -
							Email: cskh@hotro.shopee.vn</div>
						<div class="row-3 text-center">Chịu Trách Nhiệm Quản Lý Nội
							Dung: Nguyễn Đức Trí - Điện thoại liên hệ: 024 73081221 (ext
							4678)</div>
						<div class="row-3 text-center">Mã số doanh nghiệp:
							0106773786 do Sở Kế hoạch & Đầu tư TP Hà Nội cấp lần đầu ngày
							10/02/2015</div>
						<div class="row-3 text-center">© 2015 - Bản quyền thuộc về
							Công ty TNHH Shopee</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/js/angular.min.js"></script>
	<script src="/js/bootstrap.bundle.min.js"></script>
	<script src="/js/angular-route.min.js"></script>
	<script src="/js/products.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$('.owl-carousel')
									.owlCarousel(
											{
												margin : 0,
												lazyLoad : true,
												nav : true,
												items : 6,
												loop : true,
												autoplay : true,
												autoplayTimeout : 8000,
												autoplayHoverPause : true,
												responsive : {
													990 : {
														slideBy : 3,
														items : 6
													},
													767 : {
														slideBy : 3,
														items : 4
													}
												},
												navText : [
														$('.carousel-control-prev-top-search'),
														$('.carousel-control-next-top-search') ]
											});
							$('.play').on('click', function() {
								owl.trigger('play.owl.autoplay', [ 1000 ])
							})
							$('.stop').on('click', function() {
								owl.trigger('stop.owl.autoplay')
							})
						});

			app.run(function($rootScope) {
				$rootScope.$on('$routeChangeStart', function() {
					$rootScope.loading = true;
				});
				$rootScope.$on('$routeChangeSuccess', function() {
					$rootScope.loading = false;
				});
				$rootScope.$on('$routeChangeError', function() {
					$rootScope.loading = false;
					alert('Lỗi tải dữ liệu');
				});
			})
		});
	</script>
</body>

</html>