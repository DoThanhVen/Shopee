<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<style type="text/css">
.error-message {
	color: red;
	margin-top: 10px;
	font-size: 13px;
}

a {
	text-decoration: none
}
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<form class="container mt-3" action="/admin/account" method="POST">
		<div class="mb-3">
			<c:if test="${not empty item.username}">
				<input type="text" class="form-control" name="phone"
					value="${item.username}" placeholder="Số điện thoại" readonly>
			</c:if>
			<c:if test="${empty item.username}">
				<input type="text" class="form-control" name="phone"
					value="${item.username}" placeholder="Số điện thoại">
			</c:if>
		</div>
		<div class="mb-3">
			<input type="text" id="fullname" name="fullname"
				placeholder="Họ và tên" class="form-control"
				value="${item.fullname}">
		</div>
		<div class="mb-3">
			<input type="text" id="email" name="email" placeholder="Email"
				value="${item.email}" class="form-control">
		</div>
		<div class="mb-3">
			<input type="text" id="password" name="password"
				placeholder="Password" class="form-control" value="${item.password}">
		</div>
		<div class="mb-3">
			<textarea style="width: 100%" class="form-control"
				id="exampleFormControlTextarea1" rows="3" placeholder="Địa chỉ"
				name="address">${item.address}</textarea>
		</div>
		<span class="error-message" aria-live="polite">${error}</span>
		<hr>
		<button type="submit" class="btn btn-primary" name="action"
			value="action1">Thêm</button>
		<c:if test="${not empty item.username}">
			<button type="submit" class="btn btn-primary" name="action"
				value="action2">Sửa</button>
		</c:if>
	</form>
	<table class="table container mt-5">
		<thead>
			<tr>
				<th scope="col">Số điện thoại</th>
				<th scope="col">Password</th>
				<th scope="col">Họ và Tên</th>
				<th scope="col">Email</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${items}">
				<tr>
					<th scope="row">${item.username}</th>
					<td>${item.password }</td>
					<td>${item.fullname}</td>
					<td>${item.email}</td>
					<td>${item.address}</td>
					<td><a href="/admin/load/${item.username}" class="me-2">Edit</a><a
						href="/admin/delete/${item.username}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>