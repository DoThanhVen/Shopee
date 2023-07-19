<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shoppe</title>
<link rel="stylesheet" href="/css/register-final.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/icons/bootstrap-icons.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<style type="text/css">
.error-message {
	color: red;
	font-size: 12px;
}

.mb-1, .mb-3 {
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
}

.mb-1 i, .mb-3 i {
	position: absolute;
	right: 30px;
}

.bi-eye, .bi-eye-slash {
	font-size: 20px;
}

.heading i:hover {
	cursor: pointer;
	color: blue;
	text-shadow: 0 0 3px red;
}

a {
	text-decoration: none;
}

.error-message {
	color: red;
	margin-top: 10px;
	font-size: 13px;
}
</style>
</head>
<body>
	<link href='https://fonts.googleapis.com/css?family=Montserrat'
		rel='stylesheet' type='text/css'>
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
				<form style="margin-top: -80px" action="/register/sign-up" method="POST">
					<div class="heading" style="color: blue;padding:10px;">
						<a href="/home/sign-up"><i class="bi bi-backspace-fill">
								Trở Lại</i></a>
					</div>
					<div class="mb-1">
						<input type="text" id="fullname" name="fullname"
							placeholder="Họ và tên">
					</div>
					<div class="mb-1">
						<input type="text" id="email" name="email" placeholder="Email">
					</div>
					<div class="mb-1">
						<input type="password" id="password" name="password"
							placeholder="Password"><i class="bi bi-eye-slash"
							id="showPass"></i>
					</div>
					<div class="mb-3">
						<textarea style="width:90%" class="form-control" id="exampleFormControlTextarea1"
							rows="3" placeholder="Địa chỉ"></textarea>
					</div>
					<span class="error-message" aria-live="polite">${error}</span>
					<button type="submit" class="btn btn-primary" name="register">ĐĂNG
						KÝ</button>
					<div class="service" style="padding:10px">
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
	<script type="text/javascript">
		var eyeShow = document.getElementById("showPass");
		var passwordInput = document.getElementById("password");

		eyeShow.addEventListener("mousedown", function(event) {
			passwordInput.type = "text";
			eyeShow.classList.remove("bi-eye-slash");
			eyeShow.classList.add("bi-eye");
		});

		eyeShow.addEventListener("mouseup", function(event) {
			passwordInput.type = "password";
			eyeShow.classList.add("bi-eye-slash");
			eyeShow.classList.remove("bi-eye");
		});
	</script>
</body>

</html>