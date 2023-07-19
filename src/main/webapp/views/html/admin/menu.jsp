<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style>
.container-web {
	background-color: rgb(245, 245, 245);
}

.nav {
	height: 50px;
}

ul li a {
	color: white;
	text-decoration: none;
	line-height: 50px;
	margin: 0 20px;
}

ul li a:hover {
	color: white;
	opacity: .5;
}

ul li:hover a {
	opacity: .5;
}
</style>
</head>
<body>
	<div class="container-web">
		<ul class="nav justify-content-center bg-dark">
			<li class><a href="/admin/index">KHÁCH HÀNG</a></li>
			<li class><a href="/admin/manager">SẢN PHẨM</a></li>
			<li class><a href="/admin/container">KHO HÀNG</a></li>
			<li class><a href="/admin/order">ĐƠN HÀNG</a></li>
			<li class><a href="/admin/thong-ke">THỐNG KÊ</a></li>
		</ul>
	</div>
</body>
</html>