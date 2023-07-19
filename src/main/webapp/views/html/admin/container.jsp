<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.Date"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
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
	<c:if test="${not empty product}">
		<form class="container mt-3" action="/admin/add-container"
			method="POST">
			<div class="mb-3">
				<img style="width: 200px" alt="Ảnh Sản Phẩm"
					src="/images/products/${product.image}">
			</div>
			<div class="mb-3">
				<input type="text" name="name" readonly value="${product.name}"
					class="form-control">
			</div>
			<select class="form-control mb-3" name="gender">
				<option value="0" name="gender">Nam</option>
				<option value="1" name="gender">Nữ</option>
				<option value="2" name="gender">Cả 2</option>
			</select>
			<c:if
				test="${product.type.id == 1 || product.type.id == 2|| product.type.id == 13}">
				<select class="form-control mb-3" name="size">
					<option value="Oversize" name="size">Oversize</option>
					<option value="S" name="size">S</option>
					<option value="M" name="size">M</option>
					<option value="L" name="size">L</option>
					<option value="S" name="size">XL</option>
					<option value="M" name="size">XXL</option>
					<option value="L" name="size">XXL</option>
				</select>
			</c:if>
			<c:if
				test="${product.type.id == 3 || product.type.id == 4|| product.type.id == 5
				||product.type.id == 6 || product.type.id == 7|| product.type.id == 12}">
				<select class="form-control mb-3" name="size">
					<option value="27" name="size">27</option>
					<option value="28" name="size">28</option>
					<option value="29" name="size">29</option>
					<option value="30" name="size">30</option>
					<option value="31" name="size">31</option>
					<option value="32" name="size">32</option>
					<option value="33" name="size">33</option>
				</select>
			</c:if>
			<div class="mb-3">
				<input type="text" name="color" placeholder="Màu sắc"
					class="form-control">
			</div>
			<div class="mb-3">
				<input type="text" name="type" placeholder="Loại"
					class="form-control">
			</div>
			<div class="mb-3">
				<input type="number" name="quantity" value="1" class="form-control">
			</div>
			<hr>
			<button type="submit" class="btn btn-primary mb-3">Nhập</button>
		</form>
	</c:if>
	<span class="error-message mb-3" aria-live="polite">${error}</span>
	<table class="table container mt-5">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Hình Ảnh</th>
				<th scope="col">Tên Sản Phẩm</th>
				<th scope="col">Size</th>
				<th scope="col">Màu Sắc</th>
				<th scope="col">Phân Loại</th>
				<th scope="col">Giới Tính</th>
				<th scope="col">Số Lượng</th>
				<th scope="col">Ngày Nhập</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="dateFormat" value="dd-MM-yyyy" />

			<c:forEach var="item" items="${items}">
				<tr>
					<th scope="row" style="width: 10%">${item[0]}</th>
					<td style="width: 10%"><img style="width: 100%"
						alt="Ảnh Sản Phẩm" src="/images/products/${item[1]}"></td>
					<td style="width: 20%">${item[2]}</td>
					<td style="width: 10%">${item[3]}</td>
					<td style="width: 10%">${item[4]}</td>
					<td style="width: 10%">${item[5]}</td>
					<td style="width: 10%">${item[7] == 0 ? 'Nam' : item[7] == 1 ? 'Nữ' : 'Unisex'}</td>
					<td style="width: 10%">${item[6]}</td>
					<td style="width: 20%">${item[8]}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</body>
</html>