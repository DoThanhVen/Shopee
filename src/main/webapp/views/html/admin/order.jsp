<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/icons/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" href="/owlcarousel/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="/owlcarousel/assets/owl.theme.default.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="/owlcarousel/owl.carousel.min.js"></script>
<style type="text/css">
.error-message {
	color: red;
	margin-top: 10px;
	font-size: 13px;
}

a {
	text-decoration: none
}

select {
	background-size: 20px;
	padding: 10px;
	font-size: 16px;
	border-radius: 5px;
	width: 200px;
	color: #333;
}

select:hover {
	background-color: #f2f2f2;
}

select:focus {
	background-color: #fff;
	box-shadow: 0 0 5px rgba(0, 0, 0, .3);
}
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<c:if test="${not empty idBill}">
		<form class="container mt-3" action="/admin/update-bill" method="POST">
			<div class="mb-3">
				<input type="text" class="form-control" name="idbill"
					value="${idBill}" placeholder="Mã hóa đơn" readonly>
			</div>
			<select class="form-control mb-3" name="type">
				<option value="Đã Hủy Đơn" name="type">Đã Hủy Đơn</option>
				<option value="Đã Xác Nhận" name="type">Đã Xác Nhận</option>
				<option value="Đã Thanh Toán" name="type">Đã Thanh Toán</option>
				<option value="Chờ Giao Hàng" name="type">Chờ Giao Hàng</option>
				<option value="Đã Giao Hàng" name="type">Đã Giao Hàng</option>
			</select>
			<hr>
			<button type="submit" class="btn btn-primary mb-3">Cập Nhật</button>
		</form>
	</c:if>
	<span class="error-message mb-3" aria-live="polite">${error}</span>
	<table class="table">
		<thead>
		</thead>
		<tbody>

			<c:forEach var="item" items="${items}">
				<c:if test="${item[9] != currentOrder}">
					<tr>
						<th scope="row" class="bg-warning text-primary" colspan="10">Mã
							đơn hàng: ${item[9]}</th>
					</tr>
					<tr>
						 <td
							style="width: 10%;color:${item[7] == 'Đã Đặt Hàng' ? 'blue' : item[7] == 'Đã Xác Nhận' ? 'green': item[7] == 'Đã Thanh Toán' ? 'green' : item[7] == 'Đã Giao Hàng' ? 'green'  : item[7] == 'Đã Hủy Đơn' ? 'red' : 'black'}">${item[7]}</td>
						
						<td style="width: 10%">${item[7] == 'Đã Đặt Hàng' ? item[8] : item[7] == 'Đã Xác Nhận' ? item[11]: item[7] == 'Đã Thanh Toán' ? item[8] : item[7] == 'Đã Giao Hàng' ? item[12]  : item[7] == 'Đã Hủy Đơn' ? item[13] : item[8]}</td>
					</tr>
					<tr class="bg-light text-dark">
						<th scope="col">SĐT Người Đặt</th>
						<th scope="col">Hình Ảnh</th>
						<th scope="col">Tên Sản Phẩm</th>
						<th scope="col">Size</th>
						<th scope="col">Màu Sắc</th>
						<th scope="col">Phân Loại</th>
						<th scope="col">Số Lượng</th>
						<th scope="col">Action</th>
					</tr>
					<c:set var="currentOrder" value="${item[9]}" />
				</c:if>
				<tr>
					<td style="width: 10%">${item[0]}</td>
					<td style="width: 10%"><img style="width: 100%"
						alt="Ảnh Sản Phẩm" src="/images/products/${item[1]}"></td>
					<td style="width: 20%">${item[2]}</td>
					<td style="width: 10%">${item[3]}</td>
					<td style="width: 10%">${item[4]}</td>
					<td style="width: 10%">${item[5]}</td>
					<td style="width: 10%">${item[6]}</td>
					<td style="width: 10%"><a href="/admin/edit-bill/${item[10]}">Edit</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>