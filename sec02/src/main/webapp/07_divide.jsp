<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 에러 페이지 --%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눗셈 에러</title>
</head>
<body>
0으로 나누기
<%= 2/0 %>
</body>
</html>