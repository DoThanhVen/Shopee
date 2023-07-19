<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="menu.jsp"%>
	<table class="table container mt-5">
		<thead>
			<tr>
				<th style="width:40%">Năm</th>
				<th style="width:40%">Tháng</th>
				<th>Tổng</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${items}">
				<tr>
					<td>${item[0]}</td>
					<td>${item[1]}</td>
					<td>${item[2]}đ</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>