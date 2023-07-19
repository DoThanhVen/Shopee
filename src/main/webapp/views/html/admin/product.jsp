<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
	function handleImageChange(event) {
		var imageInput = event.target;
		const button = document.querySelector('#uploadImage')
		if (imageInput.files && imageInput.files[0]) {
			var imageName = imageInput.files[0].name;
			var nameDisplay = document.getElementById('imageNameDisplay');
			nameDisplay.textContent = imageName; // Hiển thị tên tệp ảnh

			var reader = new FileReader();
			reader.onload = function(e) {
				var imagePreview = document.getElementById("imagePreview");
				imagePreview.innerHTML = '<img style="width:300px;mb-3" src="' + e.target.result + '">';
				button.style.display = 'block'
			};
			reader.readAsDataURL(imageInput.files[0]);
		}
	}
</script>
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
	<form class="container mt-3" method="POST" action="/admin/upload"
		enctype="multipart/form-data">
		<div style="display: flex" class="mb-3">
			<label class="btn btn-primary" for="imageInput">Chọn Ảnh</label>
		</div>
		<input type="file" name="file" id="imageInput" accept="image/*"
			onchange="handleImageChange(event)" style="display: none">
		<div id="imagePreview" class="mb-3"></div>
		<span class="error-message mb-3" aria-live="polite">${message}</span>
		<div id="imageNameDisplay"></div>
		<div class="mb-3">
			<input type="text" class="form-control" name="name"
				placeholder="Tên sản phẩm" value="${item.name}">
		</div>
		<select class="form-control mb-3" name="type">
			<c:forEach var="type" items="${types}">
				<option value="${type.id}" name="type">${type.name}</option>
			</c:forEach>
		</select>
		<div class="mb-3">
			<input type="text" name="price" placeholder="Giá sản phẩm"
				class="form-control" value="${item.price}">
		</div>
		<div class="mb-3">
			<input type="text" name="sale" placeholder="Sale"
				class="form-control" value="${item.sale}">
		</div>
		<div class="mb-3">
			<textarea style="width: 100%" class="form-control"
				id="exampleFormControlTextarea1" rows="3"
				placeholder="Chi tiết sản phẩm" name="description">${item.description}</textarea>
		</div>
		<span class="error-message" aria-live="polite">${error}</span>
		<hr>
		<button stype="submit" class="btn btn-primary" name="action"
			value="action1">Thêm</button>
		<c:if test="${not empty item}">
			<button stype="submit" class="btn btn-primary" name="action"
				value="action2">Sửa</button>
		</c:if>
	</form>
	<table class="table container mt-5">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Hình Ảnh</th>
				<th scope="col">Tên Sản Phẩm</th>
				<th scope="col">Loại</th>
				<th scope="col">Giá</th>
				<th scope="col">Sale</th>
				<th scope="col">Description</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${items}">
				<tr>
					<th scope="row">${item[0]}</th>
					<td style="width: 7%"><img style="width: 100%"
						alt="Ảnh Sản Phẩm" src="/images/products/${item[1]}"></td>
					<td style="width: 20%">${item[2]}</td>
					<td style="width: 10%">${item[3]}</td>
					<td style="width: 10%">${item[4]}đ</td>
					<td style="width: 5%">${item[5]}%</td>
					<td style="width: 20%">${item[6]}</td>
					<td><a href="/admin/manager-load/${item[0]}" class="btn btn-primary">Edit</a>
						<a href="/admin/manager-delete/${item[0]}" class="btn btn-danger">Delete</a> <a
						class="btn btn-success" href="/admin/manager-add/${item[0]}">Nhập Hàng</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>