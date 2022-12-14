<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="plusCount()">click me!</button>
	<%
		int num1 = 200;
		int num2 = 300;
		int add = num1 + num2;
	%>
	<%=num1 %>+<%=num2 %>=<%=add %>
</body>
</html>