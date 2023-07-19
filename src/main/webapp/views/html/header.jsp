<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
								Tiếng Việt <i class="bi bi-chevron-down"></i>
						</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">Tiếng Việt</a></li>
								<li><a class="dropdown-item" href="#">Tiếng Anh</a></li>
							</ul></li>
						<%
						String username = (String) session.getAttribute("username");
						if (username == null) {
						%>
						<li class="nav-item"><a class="nav-link" href="/home/sign-up">Đăng
								Kí</a></li>
						<li class="nav-item"><a class="nav-link" href="/home/sign-in">Đăng
								Nhập</a></li>
						<%
						} else {
						%>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<%=session.getAttribute("fullname")%>
						</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="/home/order">Quản Lý
										Đơn Hàng</a></li>
								<li><a class="dropdown-item" href="/home/change-password">Đổi
										Mật Khẩu</a></li>
								<li><a class="dropdown-item" href="/logout">Đăng Xuất</a></li>
							</ul></li>
						<%
						}
						%>
					</ul>
				</div>
			</div>
		</nav>
		<header class="header row">
			<div class="col-sm-2 align-self-center">
				<a href="/home/index"><img src="/images/logoshoppee.png"
					style="width: 80%; color: white;" alt=""></a>
			</div>
			<div class="col-sm-8 align-self-center">
				<form action="/home/find-by-keyword" class="col-sm-12" role="search"
					method="GET">
					<div class="search">
						<div>
							<div class="search-2">
								<i class='bx bxs-map'></i> <input type="text"
									placeholder="Đăng ký và nhận voucher bạn mới đến 70k!"
									name="keyword">
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
								<li class="nav-item"><a class="nav-link" href="#">Dép</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Áo
										Croptop</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Áo
										Khoác Nam</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Giày
										Nam</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Váy</a></li>
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
</body>
</html>