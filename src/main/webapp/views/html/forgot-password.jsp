<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shoppe</title>
<link rel="stylesheet" href="/css/forgot-password.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/icons/bootstrap-icons.css">
<link href='https://fonts.googleapis.com/css?family=Montserrat'
	rel='stylesheet' type='text/css'>
<style type="text/css">
input[type="radio"].btn-getcode {
	display: none;
}

input[type="radio"].btn-getcode+label {
	background-color: white;
	display: inline-block;
	border: 1px solid lightgrey;
	min-width: 18%;
	height: 45px;
	text-align: center;
	font-size: 16px;
	margin-bottom: 5px;
	margin-left: 2%;
	cursor: pointer;
	font-size: 16px;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 4px;
	color: lightgrey;
}

.error-message {
	color: red;
	margin-top: -10px;
	font-size: 13px;
}

input[type="radio"]:hover+label {
	border: 1px solid grey;
	color: grey;
}

input[type="radio"]:checked+label {
	border: 1px solid lightgrey;
	color: lightgrey;
}

.input-getcode {
	display: flex;
	justify-content: center;
}

input#email {
	width: 70%;
}
</style>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<a href="/home/index"> <img src="/images/logoshoppee.png" alt="">
			</a> <label for="">Quên Mật Khẩu</label>
		</div>
		<div class="header-right">
			<a href="#">Bạn cần giúp đỡ?</a>
		</div>
	</div>
	<div class="form-register">
		<div class="form">
			<div class="form-sign-up">
				<form action="/mailer/verifycode" method="POST">
					<div class="heading">Quên Mật Khẩu</div>
					<div class="mb-1 input-getcode">
						<input type="text" id="email" name="email" value="${verifyEmail}"
							placeholder="Email"> <input type="radio"
							class="btn-getcode" id="getcode" name="getcode"> <label
							id="code-label" for="getcode" onclick="startTimer()">CODE</label>
					</div>
					<div class="mb-1">
						<input type="text" id="code" name="code" placeholder="Mã xác nhận">
					</div>
					<span class="error-message" aria-live="polite">${error}</span>
					<button type="submit" class="btn btn-primary" name="next">TIẾP
						THEO</button>
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		var countdown;
		var seconds;

		function startTimer() {
			// Xóa sự kiện click của label
			const emailInput = document.getElementById("email");
			document.getElementById("code-label").removeAttribute("onclick");
			if (!emailInput.value) {
				alert("Vui lòng nhập địa chỉ email !");
				location.reload();
				return;
			}
			$.ajax({
				type : "POST",
				url : "/mailer/getcode",
				data : {
					email : emailInput.value
				},
				success : function(response) {
					if (response.message === 'success') {
				        alert('Một mã số đã gửi đến email của bạn');
				    }
				},
				error : function() {
					alert("Gửi mail thất bại!");
				}
			});

			// Nếu có giá trị trong session storage, sử dụng nó để khởi động countdown
			var storedSeconds = sessionStorage.getItem('countdownSeconds');
			if (storedSeconds && !isNaN(storedSeconds)) {
				seconds = Number(storedSeconds);
			} else {
				seconds = 60;
			}

			countdown = setInterval(
					function() {
						seconds--;

						// Lưu giá trị của seconds vào session storage
						sessionStorage.setItem('countdownSeconds', seconds);

						document.getElementById("code-label").innerHTML = seconds
								+ "s";
						if (seconds == 0) {
							clearInterval(countdown);
							document.getElementById("code-label").innerHTML = "CODE";
							// Đặt lại sự kiện click cho label
							document.getElementById("code-label").setAttribute(
									"onclick", "startTimer()");
							seconds = 60; // Đặt lại giá trị cho seconds để người dùng có thể click lại

							// Xóa giá trị seconds trong session storage
							sessionStorage.removeItem('countdownSeconds');
						}
					}, 1000);
		}

		// Xóa giá trị seconds trong session storage khi trang bị đóng
		window.onbeforeunload = function() {
			sessionStorage.removeItem('countdownSeconds');
		};
	</script>
</body>

</html>