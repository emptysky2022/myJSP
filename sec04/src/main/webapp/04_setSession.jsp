<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set session</title>
</head>
<body>
<h1>세션 설정</h1>
<%
  session.setAttribute("id", "gildong");
  session.setAttribute("pwd", "test1234");
  session.setAttribute("age", 20);
%>
</body>
</html>