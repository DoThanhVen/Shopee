<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.poly.Bean.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Shoppe</title>
</head>
<body ng-app="myapp">
	<div ng-show="loading">Loading...</div>
	<div class="container-all-web" ng-controller="myCtrl">
		<jsp:include page="header.jsp" />
		<div class="row slide-content">
			<div class="slide-left col-sm-7 col-7 offset-sm-1">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="3" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="4" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="5" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="6" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/images/slide1.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/images/slide2.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/images/slide3.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/images/slide4.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/images/slide5.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/images/slide6.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/images/slide7.jpg" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div class="slide-right col-sm-3 col-3">
				<div class="slide-right-top">
					<img src="/images/slide-right-1.jpg" alt="">
				</div>
				<div class="slide-right-bottom">
					<img src="/images/slide-right-2.jpg" alt="">
				</div>
			</div>
		</div>
		<div class="other row">
			<div class="row col-sm-10">
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other1.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Khung Giờ Săn Sale</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other2.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Gì Cũng Rẻ - Mua Là Freeship</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other3.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Mã Giảm Giá</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other4.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Miễn Phí Vận Chuyển</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other5.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Bắt Trend - Giá Sốc</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other6.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Hoàn Xu Xtra Từ 100K</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other7.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Hàng Hiệu Giá Tốt</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other8.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Chia Kho Xu 30 Triệu</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other9.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Nạp Điện Thoại & Thẻ Game</label>
					</div>
				</div>
				<div class="other-system">
					<div class="image">
						<a href=""><img src="/images/other10.png" alt=""></a>
					</div>
					<div class="label">
						<label for="">Hàng Quốc Tế</label>
					</div>
				</div>
			</div>
		</div>
		<div class="utensil-list row mt-3">
			<div class="row content-list col-sm-10 offset-sm-1">
				<div class="heading" style="height: 50px;">
					<label>DANH MỤC</label>
				</div>
				<div class="row">
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list1.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Thời Trang Nam</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list2.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Điện Thoại & Phụ Kiện</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list3.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Thiết Bị Điện Tử</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list4.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Máy Tính & Laptop</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list5.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Máy Ảnh & Máy Quay Phim</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list6.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Đồng Hồ</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list7.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Giày Dép Nam</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list8.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Thiết Bị Điện Gia Dụng</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list9.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Thể Thao & Du Lịch</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list10.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Ô Tô & Xe Máy & Xe Đạp</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list11.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Thời Trang Nữ</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list12.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Mẹ & Bé</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list13.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Nhà Cửa & Đời Sống</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list14.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Sắc Đẹp</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list15.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Sức Khỏe</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list16.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Giày Dép Nữ</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list17.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Túi Ví Nữ</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list18.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Phụ Kiện & Trang Sức Nữ</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list19.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Bách Hóa Online</label>
						</div>
					</div>
					<div class="item col-lag-1 col-md-3">
						<div class="image">
							<a href=""><img src="/images/utensil-list20.png" alt=""></a>
						</div>
						<div class="label">
							<label for="">Nhà Sách Online</label>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="flash-sale">
			<div class="flash-sale-content col-sm-10 offset-sm-1">
				<div class="heading">
					<img src="/images/flase-sale.png" alt="">
				</div>
				<div class="flash-sale-item row">
					<div class="content-item-sale item-1 col-2 text-center">
						<div class="image">
							<img src="/images/flash-sale-item-1.png" alt="">
						</div>
						<div class="content">
							<div class="price">800.000</div>
							<div class="amount-sale">
								<div class="progress">
									<div class="progress-bar" style="width: 10%"></div>
								</div>
								<label for="">đang bán chạy</label>
							</div>
						</div>
					</div>
					<div class="content-item-sale item-1 col-2 text-center">
						<div class="image">
							<img src="/images/flash-sale-item-1.png" alt="">
						</div>
						<div class="content">
							<div class="price">800.000</div>
							<div class="amount-sale">
								<div class="progress">
									<div class="progress-bar" style="width: 10%"></div>
								</div>
								<label for="">đang bán chạy</label>
							</div>
						</div>
					</div>
					<div class="content-item-sale item-1 col-2 text-center">
						<div class="image">
							<img src="/images/flash-sale-item-1.png" alt="">
						</div>
						<div class="content">
							<div class="price">800.000</div>
							<div class="amount-sale">
								<div class="progress">
									<div class="progress-bar" style="width: 10%"></div>
								</div>
								<label for="">đang bán chạy</label>
							</div>
						</div>
					</div>
					<div class="content-item-sale item-1 col-2 text-center">
						<div class="image">
							<img src="/images/flash-sale-item-1.png" alt="">
						</div>
						<div class="content">
							<div class="price">800.000</div>
							<div class="amount-sale">
								<div class="progress">
									<div class="progress-bar" style="width: 10%"></div>
								</div>
								<label for="">đang bán chạy</label>
							</div>
						</div>
					</div>
					<div class="content-item-sale item-1 col-2 text-center">
						<div class="image">
							<img src="/images/flash-sale-item-1.png" alt="">
						</div>
						<div class="content">
							<div class="price">800.000</div>
							<div class="amount-sale">
								<div class="progress">
									<div class="progress-bar" style="width: 10%"></div>
								</div>
								<label for="">đang bán chạy</label>
							</div>
						</div>
					</div>
					<div class="content-item-sale item-1 col-2 text-center">
						<div class="image">
							<img src="/images/flash-sale-item-1.png" alt="">
						</div>
						<div class="content">
							<div class="price">800.000</div>
							<div class="amount-sale">
								<div class="progress">
									<div class="progress-bar" style="width: 10%"></div>
								</div>
								<label for="">đang bán chạy</label>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="service row">
			<div class="col-sm-10">
				<img src="/images/service.png" alt="">
			</div>
		</div>
		<div class="shopee-mall row">
			<div class="col-sm-10">
				<div class="heading d-flex">
					<div class="heading-left d-flex">
						<div class="connect-shopee-mall">
							<a href="" class="heading-shopee-mall">SHOPEE MALL</a>
						</div>
						<div class="promotion">
							<label for=""><img
								src="/images/shopee-mall-promotion-1.png" alt=""> 7 Ngày
								Miễn Phí Trả Hàng</label> <label for=""><img
								src="/images/shopee-mall-promotion-2.png" alt=""> Hàng
								Chính Hãng 100%</label> <label for=""><img
								src="/images/shopee-mall-promotion-3.png" alt=""> Miễn Phí
								Vận Chuyển</label>
						</div>
					</div>
					<div class="heading-right">
						<a href="#" class="d-flex">Xem Tất Cả
							<div>
								<i class="bi bi-chevron-right"></i>
							</div>
						</a>
					</div>
				</div>
				<div class="content row">
					<div class="content-left col-sm-4 col-4">
						<div id="shopee-mall" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-indicators">
								<button type="button" data-bs-target="#shopee-mall"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1"></button>
								<button type="button" data-bs-target="#shopee-mall"
									data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button" data-bs-target="#shopee-mall"
									data-bs-slide-to="2" aria-label="Slide 3"></button>
								<button type="button" data-bs-target="#shopee-mall"
									data-bs-slide-to="3" aria-label="Slide 4"></button>
								<button type="button" data-bs-target="#shopee-mall"
									data-bs-slide-to="4" aria-label="Slide 4"></button>
							</div>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="/images/shopee-mall-1.jpg" class="d-block w-100"
										alt="...">
								</div>
								<div class="carousel-item">
									<img src="/images/shopee-mall-2.jpg" class="d-block w-100"
										alt="...">
								</div>
								<div class="carousel-item">
									<img src="/images/shopee-mall-3.jpg" class="d-block w-100"
										alt="...">
								</div>
								<div class="carousel-item">
									<img src="/images/shopee-mall-4.jpg" class="d-block w-100"
										alt="...">
								</div>
								<div class="carousel-item">
									<img src="/images/shopee-mall-5.jpg" class="d-block w-100"
										alt="...">
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#shopee-mall" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#shopee-mall" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
					<div class="content-right col-sm-8 col-8 row">
						<div class="item col-sm-3 col-3 text-center">
							<div class="image">
								<a href="#"><img src="/images/shopee-mall-right-1.png"
									style="width: 100%;" alt=""></a>
							</div>
							<div class="name-content">Giảm đến 50%</div>
						</div>
						<div class="item col-sm-3 col-3 text-center">
							<div class="image">
								<a href="#"><img src="/images/shopee-mall-right-2.png"
									style="width: 100%;" alt=""></a>
							</div>
							<div class="name-content">Giảm đến 50%</div>
						</div>
						<div class="item col-sm-3 col-3 text-center">
							<div class="image">
								<a href="#"><img src="/images/shopee-mall-right-3.png"
									style="width: 100%;" alt=""></a>
							</div>
							<div class="name-content">Giảm đến 50%</div>
						</div>
						<div class="item col-sm-3 col-3 text-center">
							<div class="image">
								<a href="#"><img src="/images/shopee-mall-right-4.png"
									style="width: 100%;" alt=""></a>
							</div>
							<div class="name-content">Giảm đến 50%</div>
						</div>
						<div class="item col-sm-3 col-3 text-center">
							<div class="image">
								<a href="#"><img src="/images/shopee-mall-right-5.png"
									style="width: 100%;" alt=""></a>
							</div>
							<div class="name-content">Giảm đến 50%</div>
						</div>
						<div class="item col-sm-3 col-3 text-center">
							<div class="image">
								<a href="#"><img src="/images/shopee-mall-right-6.png"
									style="width: 100%;" alt=""></a>
							</div>
							<div class="name-content">Giảm đến 50%</div>
						</div>
						<div class="item col-sm-3 col-3 text-center">
							<div class="image">
								<a href="#"><img src="/images/shopee-mall-right-7.png"
									style="width: 100%;" alt=""></a>
							</div>
							<div class="name-content">Giảm đến 50%</div>
						</div>
						<div class="item col-sm-3 col-3 text-center">
							<div class="image">
								<a href="#"><img src="/images/shopee-mall-right-8.png"
									style="width: 100%;" alt=""></a>
							</div>
							<div class="name-content">Giảm đến 50%</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="top-search row">
			<div class="col-sm-10 mx-auto">
				<div
					class="heading d-flex justify-content-between align-items-center">
					<div class="heading-left position-sticky">TÌM KIẾM HÀNG ĐẦU</div>
					<div class="heading-right">
						<a href="#">Xem Tất Cả <i class="bi bi-chevron-right"></i>
						</a>
					</div>
				</div>
				<div class="content">
					<div id="carouselExampleControls" class="carousel"
						data-bs-ride="carousel">
						<ul class="owl-carousel">
							<li class="item"><a href="#">
									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-1.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Son Kem Lì</div>
							</a></li>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-2.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Áo Thun Local Brand</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-3.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Bút Mực Gel</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-4.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Ốp Lưng Iphone</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-5.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Đồ Chơi Lego</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-6.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Bảng Mắt Focallure</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-7.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Bảng Mắt Focallure</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-8.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Túi Xách Nữ</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-9.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Dép Lông</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-10.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Quần Jean Nam Rách</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-11.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Combo 100 Bao Lì Xì</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-12.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Quần Lót Nữ Cotton</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-13.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Áo Thun Polo Nam Ngắn Tay</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-14.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Áo Len</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-15.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Nước Tẩy Trang L'Oreal</div>
								</a>
							</div>
							<div class="item">
								<a href="#">

									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-16.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Mascara</div>
								</a>
							</div>
							<div class="item">
								<a href="#">
									<div class="image">
										<div class="top"></div>
										<img src="/images/top-search-17.jpg" class="d-block w-100"
											alt="...">
										<div class="amount">Bán 86k+ /Tháng</div>
									</div>
									<div class="item-content">Mặt Nạ Dưỡng Da</div>
								</a>
							</div>
						</ul>
						<button
							class="carousel-control-prev-top-search carousel-control-prev"
							type="button" data-bs-target="#carouselExampleControls"
							data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button
							class="carousel-control-next-top-search carousel-control-next"
							type="button" data-bs-target="#carouselExampleControls"
							data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="today-suggestions mt-100 row">
			<div class="col-sm-10 mx-auto p-0">
				<div class="heading">GỢI Ý HÔM NAY</div>
				<ul class="list-item row">
					<c:forEach var="item" items="${page.content}">
						<c:set var="productId" value="${Integer.parseInt(item.id)}" />
						<li class="item"><a href="/product/info/${productId}">
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
			</div>
			<div class="show-more mx-auto text-center">
				<a href="/product/page?p=0"><button type="button"
						class="btn btn-light">Xem Thêm</button></a>
			</div>
		</div>
		<div class="footer">
			<div class="content-footer">
				<div class="p1 mx-auto">
					<div class="p1-content">
						<p class="heading">SHOPEE - GÌ CŨNG CÓ, MUA HẾT Ở SHOPEE</p>
						<div class="content-paragraph">
							Shopee - ứng dụng mua sắm trực tuyến thú vị, tin cậy, an toàn và
							miễn phí! Shopee là nền tảng giao dịch trực tuyến hàng đầu ở Đông
							Nam Á, có trụ sở chính ở Singapore, đã có mặt ở khắp các khu vực
							<b><u>Singapore,</u></b> <b><u>Malaysia,</u></b> <b><u>Indonesia,</u></b>
							<b><u>Thái Lan,</u></b> <b><u>Philippines,</u></b> <b><u>Đài
									Loan,</u></b> <b><u>Brazil,</u></b> <b><u>México,</u></b> <b>&</b> <b><u>Colombia</u></b>.
							Với sự đảm bảo của Shopee, bạn sẽ mua hàng trực tuyến an tâm và
							nhanh chóng hơn bao giờ hết!
						</div>
						<p class="heading">MUA SẮM VÀ BÁN HÀNG ONLINE ĐƠN GIẢN, NHANH
							CHÓNG VÀ AN TOÀN</p>
						<div class="content-paragraph">
							Nếu bạn đang tìm kiếm một trang web để mua và bán hàng trực tuyến
							thì Shopee.vn là một sự lựa chọn tuyệt vời dành cho bạn. Shopee
							là trang thương mại điện tử cho phép người mua và người bán tương
							tác và trao đổi dễ dàng thông tin về sản phẩm và chương trình
							khuyến mãi của shop. Do đó, việc mua bán trên Shopee trở nên
							nhanh chóng và đơn giản hơn. Bạn có thể trò chuyện trực tiếp với
							nhà bán hàng để hỏi trực tiếp về mặt hàng cần mua. Còn nếu bạn
							muốn tìm mua những dòng sản phẩm chính hãng, uy tín,<a href="#"><b>Shopee
									Mall</b></a> chính là sự lựa chọn lí tưởng dành cho bạn. Để bạn có thể
							dễ dàng khi tìm hiểu và sử dụng sản phẩm,<a href="#"><b>Shopee
									Blog - trang blog thông tin chính thức của Shopee </b></a> - sẽ giúp
							bạn có thể tìm được cho mình các kiến thức về xu hướng thời
							trang, review công nghệ, mẹo làm đẹp, tin tức tiêu dùng và deal
							giá tốt bất ngờ.
						</div>
						<div class="content-paragraph">
							Đến với Shopee, cơ hội để trở thành một nhà bán hàng dễ dàng hơn
							bao giờ hết. Chỉ với vài thao tác trên ứng dụng, bạn đã có thể
							đăng bán ngay những sản phẩm của mình. Không những thế, các nhà
							bán hàng có thể tự <a href="#"><b>tạo chương trình khuyến
									mãi trên Shopee</b></a> để thu hút người mua với những sản phẩm có mức
							giá hấp dẫn. Khi đăng nhập tại Shopee Kênh người bán, bạn có thể
							dễ dàng phân loại sản phẩm, theo dõi đơn hàng, chăm sóc khách
							hàng và cập nhập ngay các hoạt động của shop.
						</div>
						<p class="heading">TẢI ỨNG DỤNG SHOPEE NGAY ĐỂ MUA BÁN ONLINE
							MỌI LÚC, MỌI NƠI</p>
						<div class="content-paragraph">
							Ưu điểm của ứng dụng Shopee là cho phép bạn mua và bán hàng mọi
							lúc, mọi nơi. Bạn có thể tải ứng dụng Shopee cũng như đăng sản
							phẩm bán hàng một cách nhanh chóng và tiện lợi. Ngoài ra, ứng
							dụng Shopee còn có những ưu điểm sau:
							<ul>
								<li>Giao diện thân thiện, đơn giản, dễ sử dụng. Bạn sẽ dễ
									dàng thấy được ngay những sản phẩm nổi bật cũng như dễ dàng tìm
									đến các ô tìm kiếm, giỏ hàng hoặc tính năng chat liền tay</li>
								<li>Ứng dụng tích hợp công nghệ quản lý đơn mua và bán hàng
									tiện lợi trên cùng một tài khoản. Bạn sẽ vừa là người mua hàng,
									vừa là người bán hàng rất linh hoạt, dễ dàng</li>
								<li>Cập nhập thông tin khuyến mãi, <a href="#"><b>Shopee
											Flash Sale</b></a> nhanh chóng và liên tục.
								</li>
							</ul>
							Tại Shopee, bạn có thể lưu các <a href="#"><b>mã giảm giá
									Shopee</b></a> và <a href="#"><b>mã miễn phí vận chuyển toàn
									quốc</b></a> . Bên cạnh đó, Shopee cũng sẽ có những chiến dịch khuyến
							mãi lớn hằng năm như <a href="#"><b>Siêu hội tiêu dùng
									15.3</b></a>, <a href="#"><b>Shopee 4.4 sale</b></a>, <a href="#"><b>Shopee
									5.5 sale</b></a>, <a href="#"><b>mã giảm giá Shopee</b></a>Shopee sale
							7.7, <a href="#"><b>mã giảm giá Shopee</b></a>Shopee sale 8.8, <a
								href="#"><b>Shopee sale 9.9</b></a>, <a href="#"><b>Shopee
									10.10 sale</b></a>, <a href="#"><b>Shopee 11.11 sale</b></a>, <a
								href="#"><b>Shopee Sale sinh nhật</b></a> , <a href="#"><b>Khuyến
									Mãi Tết</b></a> thả ga săn sale quà Tết chất lượng. Đây là thời điểm để
							người mua hàng có thể nhanh tay chọn ngay cho mình những mặt hàng
							ưa thích với mức giá giảm kỉ lục. Ngoài ra, bạn còn có thể thỏa
							thích săn sale vào các ngày trong tháng như <a href="#"><b>Sale
									giữa tháng</b></a> và <a href="#"><b>Sale cuối tháng</b></a> đón lương
							về .
						</div>
						<p class="heading">MUA HÀNG HIỆU CAO CẤP GIÁ TỐT TẠI SHOPEE</p>
						<div class="content-paragraph">
							Bên cạnh <a href="#"><b>Shopee Premium</b></a>, Shopee còn có rất
							nhiều khuyến mãi khủng cho <a href="#"><b>hàng hiệu giảm
									đến 50%</b></a>. Cộng với mã giao hàng miễn phí, Shopee cũng có các mã
							giảm giá được phân phối mỗi tháng từ rất nhiều gian hàng chính
							hãng tham gia chương trình khuyến mãi này. Bên cạnh đó, Shopee
							còn tập hợp rất nhiều thương hiệu đình đám được các nhà bán lẻ uy
							tín phân phối bán trên Shopee, <a href="#"><b>top sản
									phẩm hot deal cho bạn săn sale</b></a> luôn cập nhật mỗi giờ, mỗi ngày,
							đem đến cho bạn sự lựa chọn đa dạng, từ các hãng mỹ phẩm nổi
							tiếng hàng đầu như <a href="#"><b>Kiehl's</b></a>, <a href="#"><b>MAC</b></a>,
							<a href="#"><b>Foreo</b></a>, <a href="#"><b>SK-II</b></a>, <a
								href="#"><b>Estee Lauder</b></a>,... Đến những thương hiệu công
							nghệ nổi tiếng như <a href="#"><b>camera hành trình Gopro</b></a>,
							<a href="#"><b>máy ảnh Fuifilm</b></a>, <a href="#"><b>webcam
									Hikvision</b></a>, <a href="#"><b>máy đọc sách Kindle</b></a>,... Tại
							Shopee, bạn có thể dễ dàng tìm thấy các thương hiệu giày thể thao
							phổ biến hiện nay như: <a href="#"><b>Converse</b></a>, <a
								href="#"><b>New Balance</b></a>, <a href="#"><b>Nike</b></a>, <a
								href="#"><b>Vans</b></a>, <a href="#"><b>Crocs</b></a>,...
						</div>
						<p class="heading">MUA HÀNG HIỆU CAO CẤP GIÁ TỐT TẠI SHOPEE</p>
						<div class="content-paragraph">
							Mua hàng trên Shopee luôn là một trải nghiệm ấn tượng. Dù bạn
							đang có nhu cầu mua bất kỳ mặt hàng <a href="#"><b>thời
									trang nam</b></a>, <a href="#"><b>thời trang nữ</b></a>, <a href="#"><b>đồng
									hồ</b></a>, <a href="#"><b>điện thoại</b></a>, <a href="#"><b>nước
									rửa tay khô</b></a> hay <a href="#"><b>khẩu trang N95</b></a> thì
							Shopee cũng sẽ đảm bảo cung cấp cho bạn những sản phẩm ưng ý. Bên
							cạnh đó, Shopee cũng có sự tham gia của các thương hiệu hàng đầu
							thế giới ở đa dạng nhiều lĩnh vực khác nhau. Trong đó có thể kể
							đến Samsung, OPPO, Xiaomi, Innisfree, Unilever, P&G,
							Biti’s,...Các thương hiệu này hiện cũng đã có cửa hàng chính thức
							trên Shopee Mall với hàng trăm mặt hàng chính hãng, được cập nhập
							liên tục. Là một kênh bán hàng uy tín, Shopee luôn cam kết mang
							lại cho khách hàng những trải nghiệm mua sắm online giá rẻ, an
							toàn và tin cậy. Mọi thông tin về người bán và người mua đều được
							bảo mật tuyệt đối. Các hoạt động giao dịch thanh toán tại Shopee
							luôn được đảm bảo diễn ra nhanh chóng, an toàn. Một vấn đề nữa
							khiến cho các khách hàng luôn quan tâm đó chính là mua hàng trên
							Shopee có đảm bảo không.
						</div>
						<div class="content-paragraph">
							<a href="#"><b></b></a> Shopee luôn cam kết mọi sản phẩm trên
							Shopee, đặc biệt là Shopee Mall đều là những sản phẩm chính hãng,
							đầy đủ tem nhãn, bảo hành từ nhà bán hàng. Ngoài ra, Shopee bảo
							vệ người mua và người bán bằng cách giữ số tiền giao dịch đến khi
							người mua xác nhận đồng ý với đơn hàng và không có yêu cầu khiếu
							nại, trả hàng hay hoàn tiền nào. Thanh toán sau đó sẽ được chuyển
							đến cho người bán. Đến với Shopee ngay hôm nay để mua hàng online
							giá rẻ và trải nghiệm dịch vụ chăm sóc khách hàng tuyệt vời tại
							đây. Đặc biệt khi mua sắm trên Shopee Mall, bạn sẽ được miễn phí
							vận chuyển, giao hàng tận nơi và 7 ngày miễn phí trả hàng. Ngoài
							ra, khách hàng có thể sử dụng <a href="#"><b>Shopee Xu</b></a> để
							đổi lấy mã giảm giá có giá trị cao và voucher dịch vụ hấp dẫn.
							Tiếp đến là <a href="#"><b>Shopee Home Club</b></a>, <a href="#"><b>Shopee
									Mum Club</b></a>, <a href="#"><b>Shopee Beauty Club</b></a> và <a
								href="#"><b>Shopee Book Club</b></a> với các ưu đãi độc quyền từ
							các thương hiệu lớn có những khách hàng đã đăng ký làm thành
							viên. Hãy truy cập ngay Shopee.vn hoặc tải ngay ứng dụng Shopee
							về điện thoại ngay hôm nay!
						</div>
					</div>
				</div>
				<div class="p2 mx-auto">
					<div class="heading">Danh Mục</div>
					<div class="">
						<div class="row">
							<div class="column-1 col">
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
							</div>
							<div class="column-2 col">
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
							</div>
							<div class="column-3 col">
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
							</div>
							<div class="column-4 col">
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
							</div>
							<div class="column-5 col">
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
								<a href="#" class="menu">THỜI TRANG NAM</a>
								<div href="" class="list-menu">
									<a href="#" class="list-menu-item"> Áo Khoác </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Vest & Blazer </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Hoodie, Áo Len & Áo
										Nỉ </a> <span>&nbsp|&nbsp</span> <a href="#"
										class="list-menu-item"> Quần Jeans </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Dài/Quần Âu </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Quần Short </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Ba Lỗ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Áo Lót </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Ngủ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Đồ Bộ </a> <span>&nbsp|&nbsp</span>
									<a href="#" class="list-menu-item"> Vớ Tất </a>
								</div>
							</div>
						</div>
					</div>
				</div>
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
	</script>
</body>

</html>