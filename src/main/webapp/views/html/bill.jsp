<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.poly.Dao.*"%>
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
<script type="/js/bootstrap.bundle.min.js"></script>
<script type="/js/bootstrap.min.js"></script>
<style type="text/css">
.tab {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border-bottom: 1px solid #ccc;
}

.tab li {
	float: left;
}

.tab button {
	display: block;
	border: none;
	outline: none;
	padding: 5px 10px;
	background-color: inherit;
	font-size: 15px;
	cursor: pointer;
	font-weight: 700;
}

.tabcontent {
	display: none;
}
@keyframes reveal {
  from { opacity: 0; }
  to { opacity: 1; }
}

.tabcontent.show {
	display: block;
	 animation: reveal 0.5s ease;
}

.error-message {
	color: red;
	margin-top: 10px;
	font-size: 13px;
}

.container-order {
	margin: 200px 10px 50px 10px;
}

.nav-tabs {
	margin-bottom: 10px;
}

.tablinks {
	margin: 0 5px;
}

.tablinks {
	position: relative;
}

.tablinks:after {
	content: '';
	position: absolute;
	bottom: 0px;
	left: 0;
	width: 0;
	height: 1px;
	background-color: grey;
	transition: width 0.5s ease;
}

.tablinks:before {
	content: '';
	position: absolute;
	top: 0px;
	right: 0;
	width: 0;
	height: 1px;
	background-color: grey;
	transition: width 0.5s ease;
}

.tablinks:hover:before, .tablinks.active:before {
	width: 100%;
}

.tablinks:hover:after, .tablinks.active:after {
	width: 100%;
}

.tablinks.active {
	border: none;
}

.tablinks  a {
	text-decoration: none;
	color: black;
}

.tablinks {
	border: none;
}
</style>
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
							<ul class="dropdown-menu" style="margin-top: -5px;"
								aria-labelledby="navbarDropdown">
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
							<ul class="dropdown-menu" style="margin-top: -5px;"
								aria-labelledby="navbarDropdown">
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
	<div id="exTab1" class="container-order">
		<ul class="tab">
			<li class="nav-item" role="presentation">
				<button class="active tablinks" id="choXacNhan-tab"
					data-bs-toggle="tab" data-bs-target="#choXacNhan" type="button"
					role="tab" aria-controls="choXacNhan" aria-selected="true"
					onclick="openTab(event, 'choXacNhan')">Chờ Xác Nhận</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="tablinks" id="choGiaoHang-tab" data-bs-toggle="tab"
					data-bs-target="#choGiaoHang" type="button" role="tab"
					aria-controls="choGiaoHang" aria-selected="false"
					onclick="openTab(event, 'choGiaoHang')">Chờ Giao Hàng</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="tablinks" id="daGiaoHang-tab" data-bs-toggle="tab"
					data-bs-target="#daGiaoHang" type="button" role="tab"
					aria-controls="daGiaoHang" aria-selected="false"
					onclick="openTab(event, 'daGiaoHang')">Đã Giao Hàng</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="tablinks" id="daHuyDon-tab" data-bs-toggle="tab"
					data-bs-target="#daHuyDon" type="button" role="tab"
					aria-controls="daHuyDon" aria-selected="false"
					onclick="openTab(event, 'daHuyDon')">Đã Hủy Đơn</button>
			</li>
		</ul>
		<div class="tab-content mt-3" id="myTabContent">
			<div class="tabcontent show" id="choXacNhan" role="tabpanel"
				aria-labelledby="choXacNhan-tab">
				<table class="table">
					<tbody>
						<c:if test="${empty choXacNhan}">
							<img style="width: 200px" src="/images/buy-item-cart.png"
								alt="Ảnh sản phẩm">
						</c:if>
						<c:forEach var="item" items="${choXacNhan}">
							<c:if test="${item[6] != currentOrder}">
								<tr>
									<th scope="row" class="bg-warning text-primary" colspan="6">Mã
										đơn hàng: ${item[6]}</th>
									<td style="width: 10%"><a class="btn btn-danger"
										href="/home/cancel-order/${item[6]}"
										name="Idbill">Hủy Đơn</a></td>
								</tr>
								<tr class="bg-light text-dark">
									<th scope="col">Hình Ảnh</th>
									<th scope="col">Tên Sản Phẩm</th>
									<th scope="col">Size</th>
									<th scope="col">Màu Sắc</th>
									<th scope="col">Phân Loại</th>
									<th scope="col">Số Lượng</th>
									<th scope="col">Giá</th>
								</tr>
								<c:set var="currentOrder" value="${item[6]}" />
							</c:if>
							<tr>
								<td style="width: 5%"><img style="width: 100%"
									alt="Ảnh Sản Phẩm" src="/images/products/${item[0]}"></td>
								<td style="width: 20%">${item[1]}</td>
								<td style="width: 10%">${item[2]}</td>
								<td style="width: 10%">${item[3]}</td>
								<td style="width: 10%">${item[4]}</td>
								<td style="width: 10%">${item[5]}</td>
								<td style="width: 10%">${String.format('%,.0f', item[7]-(item[8]*item[7]/100))}đ</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
			<div class="tabcontent" id="choGiaoHang" role="tabpanel"
				aria-labelledby="choGiaoHang-tab">
				<table class="table">
					<tbody>
						<c:if test="${empty daXacNhan}">
							<img style="width: 200px" src="/images/buy-item-cart.png"
								alt="Ảnh sản phẩm">
						</c:if>
						<c:forEach var="item" items="${daXacNhan}">
							<c:if test="${item[6] != currentOrder}">
								<tr>
									<th scope="row" class="bg-warning text-primary" colspan="6">Mã
										đơn hàng: ${item[6]}</th>
								</tr>
								<tr class="bg-light text-dark">
									<th scope="col">Hình Ảnh</th>
									<th scope="col">Tên Sản Phẩm</th>
									<th scope="col">Size</th>
									<th scope="col">Màu Sắc</th>
									<th scope="col">Phân Loại</th>
									<th scope="col">Số Lượng</th>
								</tr>
								<c:set var="currentOrder" value="${item[6]}" />
							</c:if>
							<tr>
								<td style="width: 5%"><img style="width: 100%"
									alt="Ảnh Sản Phẩm" src="/images/products/${item[0]}"></td>
								<td style="width: 20%">${item[1]}</td>
								<td style="width: 10%">${item[2]}</td>
								<td style="width: 10%">${item[3]}</td>
								<td style="width: 10%">${item[4]}</td>
								<td style="width: 10%">${item[5]}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="tabcontent" id="daGiaoHang" role="tabpanel"
				aria-labelledby="daGiaoHang-tab">
				<table class="table">
					<tbody>
						<c:if test="${empty daGiaoHang}">
							<img style="width: 200px" src="/images/buy-item-cart.png"
								alt="Ảnh sản phẩm">
						</c:if>
						<c:forEach var="item" items="${daGiaoHang}">
							<c:if test="${item[6] != currentOrder}">
								<tr>
									<th scope="row" class="bg-warning text-primary" colspan="6">Mã
										đơn hàng: ${item[6]}</th>
								</tr>
								<tr class="bg-light text-dark">
									<th scope="col">Hình Ảnh</th>
									<th scope="col">Tên Sản Phẩm</th>
									<th scope="col">Size</th>
									<th scope="col">Màu Sắc</th>
									<th scope="col">Phân Loại</th>
									<th scope="col">Số Lượng</th>
								</tr>
								<c:set var="currentOrder" value="${item[6]}" />
							</c:if>
							<tr>
								<td style="width: 5%"><img style="width: 100%"
									alt="Ảnh Sản Phẩm" src="/images/products/${item[0]}"></td>
								<td style="width: 20%">${item[1]}</td>
								<td style="width: 10%">${item[2]}</td>
								<td style="width: 10%">${item[3]}</td>
								<td style="width: 10%">${item[4]}</td>
								<td style="width: 10%">${item[5]}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="tabcontent" id="daHuyDon" role="tabpanel"
				aria-labelledby="daHuyDon-tab">
				<table class="table">
					<tbody>
						<c:if test="${empty daHuyDon}">
							<img style="width: 200px" src="/images/buy-item-cart.png"
								alt="Ảnh sản phẩm">
						</c:if>
						<c:forEach var="item" items="${daHuyDon}">
							<c:if test="${item[6] != currentOrder}">
								<tr>
									<th scope="row" class="bg-warning text-primary" colspan="5">Mã
										đơn hàng: ${item[6]}</th>
									<td style="width: 10%"><a class="btn btn-danger"
										href="/home/repurchase/${item[6]}">Mua Lại</a></td>
								</tr>
								<tr class="bg-light text-dark">
									<th scope="col">Hình Ảnh</th>
									<th scope="col">Tên Sản Phẩm</th>
									<th scope="col">Size</th>
									<th scope="col">Màu Sắc</th>
									<th scope="col">Phân Loại</th>
									<th scope="col">Số Lượng</th>
								</tr>
								<c:set var="currentOrder" value="${item[6]}" />
							</c:if>
							<tr>
								<td style="width: 5%"><img style="width: 100%"
									alt="Ảnh Sản Phẩm" src="/images/products/${item[0]}"></td>
								<td style="width: 20%">${item[1]}</td>
								<td style="width: 10%">${item[2]}</td>
								<td style="width: 10%">${item[3]}</td>
								<td style="width: 10%">${item[4]}</td>
								<td style="width: 10%">${item[5]}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<script type="text/javascript">
		function openTab(evt, tabName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].classList.remove("show");
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].classList.remove("active");
			}
			document.getElementById(tabName).classList.add("show");
			evt.currentTarget.classList.add("active");
		}
	</script>
</body>
</html>