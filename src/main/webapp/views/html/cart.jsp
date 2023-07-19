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
<link rel="stylesheet" href="/css/cart.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
<body ng-app="myapp" ng-controller="myCtrl">
	<nav class="navbar navbar-expand-lg navbar-warning container-fluid">
		<div class="container-fluid container-nav">
			<div class="container-left">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">Kênh Người Bán</a></li>
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
							<li><a class="dropdown-item" href="/home/order">Quản Lý Đơn Hàng</a></li>
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
	<div class="header container-fluid">
		<div class="container row">
			<div class="cart-page-header col-sm-5">
				<a href="/home/index"><img src="/images/logoshoppee.png"
					style="" alt=""></a> <label for="">Giỏ Hàng</label>
			</div>
			<div class="cart-page-search col-sm-7">
				<form class="col-sm-12" role="search">
					<div class="search">
						<div>
							<div class="search-2">
								<i class='bx bxs-map'></i> <input type="text"
									placeholder="NHẮC BẠN CHUẨN BỊ SĂN SALE 2.2">
								<button>
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="buy-item" ng-view>
		<div class="row">
			<div class="giamGia">
				<div class="card col-sm-10 mx-auto">Nhấn vào mục Mã giảm giá ở
					cuối trang để hưởng miễn phí vận chuyển bạn nhé!</div>
			</div>
			<div class="itemBuy col-sm-10 mx-auto p-3">
				<div class="item-buy-in-cart">
					<div class="card">
						<div class="card-header">
							<label class="deal-soc"> Deal Sốc </label> <label>Mua kèm
								deal độc quyền</label> <a href="">Thêm ></a>
						</div>
						<c:if test="${empty carts}">
							<div class="card-body" style="text-align: center">
						</c:if>
						<c:if test="${not empty carts}">
							<div class="card-body">
						</c:if>
						<table class="table table-borderless">
							<c:if test="${empty carts}">
								<img style="width: 200px" src="/images/buy-item-cart.png"
									alt="Ảnh sản phẩm">
							</c:if>
							<c:forEach var="item" items="${carts}" varStatus="loop">
								<tr class="">
									<td style="width: 2%;"><input type="checkbox"
										class="checkBuy"></td>
									<td style="display: none">${item[9]}</td>
									<td style="width: 10%;"><img style="width: 100%;"
										src="/images/products/${item[0]}" alt="Ảnh sản phẩm"></td>
									<td style="width: 20%;">${item[1]}</td>
									<c:if test="${not empty item[4]}">
										<td style="width: 10%;" class="text-center">Size:
											${item[4]}</td>
									</c:if>
									<c:if test="${empty item[4]}">
										<td style="width: 10%;" class="text-center"></td>
									</c:if>
									<c:if test="${not empty item[5]}">
										<td style="width: 10%;" class="text-center">Màu:
											${item[5]}</td>
									</c:if>
									<c:if test="${empty item[5]}">
										<td style="width: 10%;" class="text-center"></td>
									</c:if>
									<c:if test="${not empty item[6]}">
										<td style="width: 10%;" class="text-center">Loại:
											${item[6]}</td>
									</c:if>
									<c:if test="${empty item[6]}">
										<td style="width: 10%;" class="text-center"></td>
									</c:if>
									<td style="width: 17%;" class="text-center"><del>${String.format('%,d',item[2])}đ</del>
										<div>${String.format('%,.0f', item[2]-(item[2]*item[3]/100))}đ</div></td>
									<td style="width: 10%;" class="text-center">SL: ${item[7]}</td>
									<td style="width: 16%; color: #ee4d2d;" class="text-center">${String.format('%,.0f', (item[2]-(item[2]*item[3]/100))*item[7])}đ</td>
									<td><a href="/cart/delete/${item[9]}" style="color: red;"><i class='bx bx-x-circle'></i></a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="pay col-sm-10 mx-auto">
			<div class="top px-2">
				<div class="right offset-sm-6">
					<div class="voucher">
						<i class="bi bi-coin"></i> Shopee Voucher
					</div>
					<a href="#">Chọn hoặc nhập mã</a>
				</div>
			</div>
			<div class="bottom">
				<div class="left">
					<input type="checkbox" name="" id="selectAll"> <label
						for="">Chọn Tất cả (${lengthCart})</label>
				</div>
				<div class="right">
					<label for="" id="quantity-product">Tổng thanh toán (0 Sản
						phẩm): </label> <label for="" class="sumPrice" id="tong-tien">0đ</label>
					<button onclick="submitBuyItems()">Mua hàng</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="today-suggestions">
		<div class="col-sm-10 col-12 mx-auto p-0">
			<div
				class="heading pt-3 d-flex justify-content-between align-items-center">
				<div class="heading-left position-sticky">TÌM KIẾM HÀNG ĐẦU</div>
				<div class="heading-right">
					<a href="/product/page?p=0">Xem Tất Cả <i
						class="bi bi-chevron-right"></i>
					</a>
				</div>
			</div>
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
	<script src="/js/angular.min.js"></script>
	<script src="/js/bootstrap.bundle.min.js"></script>
	<script src="/js/angular-route.min.js"></script>
	<script src="/js/cart.js"></script>
	<script src="/js/products.js"></script>
	<script>
        const selectAllCheckbox = document.getElementById("selectAll");
        const checkboxes = document.querySelectorAll(".checkBuy");
        // Xử lý sự kiện "click" của checkbox "Chọn Tất cả"
        selectAllCheckbox.addEventListener("click", function() {
            let tongTien = 0;
            let quantity = 0;
            checkboxes.forEach(checkbox => {
            	const row = checkbox.parentNode.parentNode;
                const cell = row.querySelector('table tr td:nth-child(10)');
                const giaTien = parseInt(cell.textContent.replace(/\D/g, ''));
                tongTien += giaTien;
                quantity++;
                checkbox.checked = selectAllCheckbox.checked;
            });
            const tongTienElement = document.getElementById('tong-tien');
            const tongSanPham = document.getElementById('quantity-product');
            tongTienElement.textContent = tongTien+"đ";
            tongSanPham.textContent = "Tổng thanh toán ("+quantity+" Sản Phẩm):"
        });

        // Xử lý sự kiện "click" của các checkbox khác
        checkboxes.forEach(checkbox => {
            checkbox.addEventListener("click", function() {
                if (!checkbox.checked) {
                    selectAllCheckbox.checked = false;
                } else {
                    const allChecked = Array.from(checkboxes).every(checkbox => checkbox.checked);
                    const disableChecked = Array.from(checkboxes).every(checkbox => checkbox.checked === false);
                    if (allChecked) {
                        selectAllCheckbox.checked = true;
                    }
                    if(disableChecked){
                    	 selectAllCheckbox.checked = false;
                    }
                }
            });
        });
       
        // Thêm sự kiện "click" vào từng checkbox
        checkboxes.forEach(checkbox => {
          checkbox.addEventListener('click', function() {
            // Tính toán tổng tiền
            let tongTien = 0;
            let quantity = 0;
            checkboxes.forEach(checkbox => {
              if (checkbox.checked) {
                // Lấy giá tiền tương ứng của sản phẩm
                const row = checkbox.parentNode.parentNode;
                const cell = row.querySelector('table tr td:nth-child(10)');
                const giaTien = parseInt(cell.textContent.replace(/\D/g, ''));
                tongTien += giaTien;
                quantity++;
              }
            });
            
            // Hiển thị tổng tiền ra màn hình
            const tongTienElement = document.getElementById('tong-tien');
            const tongSanPham = document.getElementById('quantity-product');
            tongTienElement.textContent = tongTien+"đ";
            tongSanPham.textContent = "Tổng thanh toán ("+quantity+" Sản Phẩm):";
          });
        });
        function submitBuyItems() {
        	  var ids = [];
        	  $('input.checkBuy:checked').each(function() {
        	    ids.push($(this).closest('tr').find('td:eq(1)').text());
        	  });
				if(ids.length === 0){
					alert("Vui lòng chọn ít nhất một sản phẩm để đặt mua");
				    return;
				}
        	  $.ajax({
        	    type: "POST",
        	    url: "/cart/buy-item",
        	    data: { ids: ids },
        	    success: function(response) {
        	    	alert("Đặt hàng thành công!!!!!!!!!!!!");
        	    	window.location.href = "/home/cart";
        	    },
        	    error: function() {
        	      // Xử lý lỗi nếu có
        	    }
        	  });
        	}
    </script>
</body>

</body>

</html>