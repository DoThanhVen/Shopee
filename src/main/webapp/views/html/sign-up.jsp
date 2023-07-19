<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shoppe</title>
<link rel="stylesheet" href="/css/register.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/icons/bootstrap-icons.css">
<link href='https://fonts.googleapis.com/css?family=Montserrat'
	rel='stylesheet' type='text/css'>
<style type="text/css">
.error-message {
	color: red;
	margin-top: -10px;
	font-size: 13px;
}
</style>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<a href="/home/index"> <img src="/images/logoshoppee.png" alt="">
			</a> <label for="">Đăng Ký</label>
		</div>
		<div class="header-right">
			<a href="#">Bạn cần giúp đỡ?</a>
		</div>
	</div>
	<div class="form-register">
		<div class="form">
			<div class="form-sign-up">
				<form action="/register/check" method="POST">
					${message}
					<div class="heading">Đăng ký</div>
					<div class="mb-3">
						<input type="tel" id="phone" name="phone"
							placeholder="Số điện thoại"><br> <span
							class="error-message" aria-live="polite">${error}</span>
					</div>
					<button type="submit" class="btn btn-primary" name="next">TIẾP
						THEO</button>
					<div class="more row">
						<div class="left col-sm-4"></div>
						<div class="center col-sm-2">HOẶC</div>
						<div class="right col-sm-4"></div>
					</div>
					<div class="sign-up-more row">
						<div class="facebook col-sm-6">
							<button class="btn btn-primary" type="submit">
								<i class="bi bi-facebook"></i> Facebook
							</button>
						</div>
						<div class="google col-sm-6">
							<button class="btn btn-primary" type="submit">
								<i class="bi bi-google"></i> Google
							</button>
						</div>
					</div>
					<div class="service">
						<label>Bằng việc đăng kí, bạn đã đồng ý với Shopee về</label>
						<div class="content">
							<a href="#">Điều khoản dịch vụ</a> & <a href="#">Chính sách
								bảo mật</a>
						</div>
					</div>
					<div class="sign-in">
						Bạn đã có tài khoản? <a href="/home/sign-in">Đăng nhập</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="content-footer">
			<div class="p3">
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
							<li><a href="#"><img src="/images/shipper-10.png" alt=""></a></li>
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
					<div class="bottom-left">© 2023 Shopee. Tất cả các quyền được
						bảo lưu.</div>
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
						Dung: Nguyễn Đức Trí - Điện thoại liên hệ: 024 73081221 (ext 4678)
					</div>
					<div class="row-3 text-center">Mã số doanh nghiệp: 0106773786
						do Sở Kế hoạch & Đầu tư TP Hà Nội cấp lần đầu ngày 10/02/2015</div>
					<div class="row-3 text-center">© 2015 - Bản quyền thuộc về
						Công ty TNHH Shopee</div>
				</div>
			</div>
		</div>
	</div>

	<!-- <script src="/js/bootstrap.bundle.min.js"></script> -->
</body>

</html>