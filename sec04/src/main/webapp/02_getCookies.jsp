<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get cookies</title>
</head>
<body>
<h1>클라이언트로부터 받아온 cookie</h1>
<%
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie : cookies){
		out.print(cookie.getName() + " = " + cookie.getValue() + "<br>");
	}
%>

</body>
</html>