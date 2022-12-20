<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<h1>환영합니다! <%=session.getAttribute("loginUser") %>님</h1>
<button onclick='location.href="10_logout.jsp"'>로그아웃</button>
</body>
</html>