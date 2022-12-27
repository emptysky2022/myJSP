<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<style type="text/css">
h1 {
	text-align: center;
	color: green;
}

.add {
	text-align: right;
	display: block;
}

table {
	border: 1px solid white;
	width: 100%;
	text-align: center;
}

tr {
	height: 30px;
}

th {
	background: lightgreen;
}

th:nth-child(4), th:nth-child(5) {
	width: 75px;
}
</style>
</head>
<body>
	<h1>상품 리스트 - 관리자 페이지</h1>

	<a class="add" href="productWrite.do">상품 등록</a>
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>가격</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="product" items='${productList }'>
			<tr>
				<td>${product.code }</td>
				<td>${product.name }</td>
				<td>${String.format("%,d", product.price) }원</td>
				<td><a href="productUpdate.do?code=${product.code }">상품수정</a></td>
				<td><a href="productDelete.do?code=${product.code }">상품삭제</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>