<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<style type="text/css">
h1 {
	text-align: center;
	color: green;
}

table {
	width: 100%;
	border: 1px solid black;
}
td:first-child{
	width: 10%;
}
tr {
	height: 30px;
}

th {
	width: 30%;
	background: lightgreen;
}
</style>
<script type="text/javascript" src="script/product.js"></script>
</head>
<body>
	<h1>상품 수정 - 관리자 페이지</h1>
	<form action="productUpdate.do" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="code" value="${product.code }">
		<input type="hidden" name="nonmakeImg" value="${product.pictureurl }">
		<table>
			<tr>
				<td>
					<c:choose>
						<c:when test="${empty product.pictureurl}">
							<img src="upload/noimg.gif">
						</c:when>
						<c:otherwise>
							<img src="upload/${product.pictureurl }">
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<table>
						<tr>
							<th>상품명</th>
							<td><input type="text" name="name" size="80" value="${product.name }"></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" name="price" value="${product.price }"> 원</td>
						</tr>
						<tr>
							<th>이미지</th>
							<td><input type="file" name="pictureurl"><br>
								(주의사항 : 이미지를 변경하고자 할때만 선택하세요.)</td>
						</tr>
						<tr>
							<th>설명</th>
							<td><textarea cols="80" rows="10" name="description"
									>${product.description }</textarea></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<br> <input type="submit" value="등록"
			onclick="return productCheck()"> <input type="reset"
			value="초기화"> <input type="button" value="돌아가기"
			onclick="location.href='productList.do'">
	</form>
</body>
</html>