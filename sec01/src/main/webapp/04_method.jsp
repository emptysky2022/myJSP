<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="method">
		<input type="submit" value="get방식으로 호출함">
	</form>
	<form method="post" action="method">
		<input type="submit" value="post방식으로 호출함"><br>
		<a href="method">링크 방식으로 호출함(get)</a>
	</form>
	
</body>
</html>