<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<h1>상품 등록 - 관리자 페이지</h1>
	<form action="productWrite.do" method="post"
		enctype="multipart/form-data">
		<table>
			<tr>
				<th>상품명</th>
				<td><input type="text" name="name" size="80"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="text" name="price"> 원</td>
			</tr>
			<tr>
				<th>이미지</th>
				<td><input type="file" name="pictureurl"><br>
					(주의사항 : 이미지를 변경하고자 할때만 선택하세요.)</td>
			</tr>
			<tr>
				<th>설명</th>
				<td><textarea cols="80" rows="10" name="description"
						placeholder="제품의 설명이 필요할 경우 입력해주세요"></textarea></td>
			</tr>
		</table>
		<br> <input type="submit" value="등록"
			onclick="return productCheck()"> <input type="reset"
			value="초기화"> <input type="button" value="돌아가기"
			onclick="location.href='productList.do'">
	</form>
</body>
</html>