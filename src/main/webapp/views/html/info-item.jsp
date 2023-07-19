<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shoppe</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/icons/bootstrap-icons.css">
<link rel="stylesheet" href="/css/info-item.css">
<style type="text/css">
.stars-container {
	display: flex;
	justify-content: flex-end;
}

.rating input[type="radio"] {
	display: none;
}

.rating input[type="radio"]:checked ~ label i.bi-star-fill {
	color: orange;
}

.rating label i.bi-star-fill {
	color: gray;
}

.rating input[type="radio"]:checked ~ label i.bi-star-fill:hover {
	color: orange;
}

.rating input[type="radio"]:checked+label i.bi-star-fill {
	color: orange;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="info-item">
		<div class="info-left">
			<div class="image">
				<img src="/images/products/${item.image}"
					style="width: 100%; height: 500px;" alt="Hình Ảnh Sản Phẩm">
			</div>
		</div>
		<div class="info-right">
			<form id="add-to-cart-form" action="/cart/${item.id}">
				<div class="heading">${item.name}</div>
				<div class="rating">
					<div class="stars-container"
						style="display: flex; flex-direction: row-reverse;">
						<input type="radio" id="star5" name="rating" value="5"><label
							for="star5"><i class="bi bi-star-fill"></i></label> <input
							type="radio" id="star4" name="rating" value="4"><label
							for="star4"><i class="bi bi-star-fill"></i></label> <input
							type="radio" id="star3" name="rating" value="3"><label
							for="star3"><i class="bi bi-star-fill"></i></label> <input
							type="radio" id="star2" name="rating" value="2"><label
							for="star2"><i class="bi bi-star-fill"></i></label> <input
							type="radio" id="star1" name="rating" value="1"><label
							for="star1"><i class="bi bi-star-fill"></i></label>
					</div>
				</div>

				<div class="price  mt-3">
					<div class="cost">₫${item.price}</div>
					<div class="price-sale">₫${String.format('%,.0f', item.price-(item.sale*item.price/100))}</div>
					<div class="sale">${item.sale}%GIẢM</div>
				</div>
				<div class="transport mt-3">
					<label class="heading-info">Vận Chuyển</label>
					<div class="free-ship">
						<img alt="" src="/images/free-ship.png"> Miễn phí vận chuyển
					</div>
				</div>
				<c:if test="${not empty managers}">
					<c:forEach var="manager" items="${managers}" varStatus="loop">
						<c:if test="${not empty colors}">
							<c:if test="${loop.first}">
								<div class="size mt-3">
									<label class="heading-info">Màu</label>
									<div class="group-size">
										<c:forEach var="color" items="${colors}">
											<div class="container-color me-1">
												<input type="radio" class="btn-color" id="color${color}"
													name="colors" value="${color}"> <label
													for="color${color}">${color}</label> <i
													class="bi bi-check2"></i>
											</div>
										</c:forEach>
									</div>
								</div>
							</c:if>
						</c:if>
					</c:forEach>
					<c:forEach var="manager" items="${managers}" varStatus="loop">
						<c:if test="${not empty classifies}">
							<c:if test="${loop.first}">
								<div class="classify mt-3">
									<label class="heading-info">Phân Loại</label>
									<div class="group-size">
										<c:forEach var="classify" items="${classifies}">
											<div class="container-classify me-1">
												<input type="radio" class="btn-classify"
													id="classify${classify}" name="classifies"
													value="${classify}"> <label
													for="classify${classify}">${classify}</label> <i
													class="bi bi-check2"></i>
											</div>
										</c:forEach>
									</div>
								</div>
							</c:if>
						</c:if>
					</c:forEach>
					<c:forEach var="manager" items="${managers}" varStatus="loop">
						<c:if test="${not empty sizes}">
							<c:if test="${loop.first}">
								<div class="size mt-3">
									<label class="heading-info">Size</label>
									<div class="group-size">
										<c:forEach var="size" items="${sizes}">
											<div class="container-size me-1">
												<input type="radio" class="btn-size" id="option${size}"
													name="sizes" value="${size}"> <label
													for="option${size}">${size}</label> <i class="bi bi-check2"></i>
											</div>
										</c:forEach>
									</div>
								</div>
							</c:if>
						</c:if>
					</c:forEach>
				</c:if>
				<div class="quantity mt-3">
					<label for="quantity" class="heading-info">Số lượng</label>
					<div class="group-quantity">
						<span class="dec btn" onclick="decrementValue()">-</span> <input
							type="text" id="quantity" name="quantity" value="1" redonly>
						<span class="inc btn" onclick="incrementValue()">+</span>
					</div>
				</div>
				<div class="quantity mt-3">
					<label for="quantity" class="heading-info">Description</label>
					<div class="group-quantity">${item.description}</div>
				</div>
				<div class="group-button">
					<button class="btn add-to-cart" name="action" value="action1">
						<i class="bi bi-cart-plus"></i> Thêm Vào Giỏ Hàng
					</button>
					<button class="buy-item btn" name="action" value="action2">Mua
						ngay</button>
				</div>
			</form>

			<div class="commit">
				<div class="commit-left">
					<img alt="" src="/images/logo-cam-ket.png"> Shoppe Đảm Bảo
				</div>
				<div class="commit-right">3 Ngày Trả Hàng / Hoàn Tiền</div>
			</div>
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
							<li><a href="#"><img src="/images/pay-1.png" alt></a></li>
							<li><a href="#"><img src="/images/pay-2.png" alt></a></li>
							<li><a href="#"><img src="/images/pay-3.png" alt></a></li>
							<li><a href="#"><img src="/images/pay-4.png" alt></a></li>
							<li><a href="#"><img src="/images/pay-5.png" alt></a></li>
							<li><a href="#"><img src="/images/pay-6.png" alt></a></li>
							<li><a href="#"><img src="/images/pay-7.png" alt></a></li>
							<li><a href="#"><img src="/images/pay-9.png" alt></a></li>
						</ul>
						<div class="heading">ĐƠN VỊ VẬN CHUYỂN</div>
						<ul class="list-item">
							<li><a href="#"><img src="/images/shipper-1.png" alt></a></li>
							<li><a href="#"><img src="/images/shipper-2.png" alt></a></li>
							<li><a href="#"><img src="/images/shipper-3.jpg" alt></a></li>
							<li><a href="#"><img src="/images/shipper-4.png" alt></a></li>
							<li><a href="#"><img src="/images/shipper-5.png" alt></a></li>
							<li><a href="#"><img src="/images/shipper-6.png" alt></a></li>
							<li><a href="#"><img src="/images/shipper-7.png" alt></a></li>
							<li><a href="#"><img src="/images/shipper-8.png" alt></a></li>
							<li><a href="#"><img src="/images/shipper-9.png" alt></a></li>
							<li><a href="#"><img src="/images/shipper-10.png" alt></a></li>
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
								<li><a href="#"><img src="/images/QR.png" alt></a></li>
							</div>
							<div class="download">
								<li><a href="#"><img src="/images/download-1.png" alt></a></li>
								<li><a href="#"><img src="/images/download-2.png" alt></a></li>
								<li><a href="#"><img src="/images/download-3.png" alt></a></li>
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
							<li><a href="#"><img src="/images/logoCCDV.png" alt></a></li>
							<li><a href="#"><img src="/images/logoCCDV.png" alt></a></li>
							<li><a href="#"><img src="/images/logoCCDV.png" alt></a></li>
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
		function addToCart() {
			var formElement = document.getElementById("add-to-cart-form");
			var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if (xhr.readyState === XMLHttpRequest.DONE) {
					if (xhr.status === 200) {
						console.log("Thêm sản phẩm vào giỏ hàng thành công.");
					} else {
						console.log("Có lỗi khi thêm sản phẩm vào giỏ hàng.");
					}
				}
			};
			xhr.open("GET", formElement.action + "?"
					+ new FormData(formElement).toString());
			xhr.send();
		}

		function decrementValue() {
			var quantityElement = document.getElementById("quantity");
			var quantityValue = parseInt(quantityElement.value);
			if (quantityValue > 2) {
				quantityElement.value = quantityValue - 1;
			}
		}

		function incrementValue() {
			var quantityElement = document.getElementById("quantity");
			var quantityValue = parseInt(quantityElement.value);
			quantityElement.value = quantityValue + 1;
		}
	</script>
</body>
</html>