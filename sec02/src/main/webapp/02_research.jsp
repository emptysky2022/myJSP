<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>research</title>
<style type="text/css">
	b{
		font-size: x-large;
	}
</style>
</head>
<body>
  <h1>설문 조사 결과</h1>
  <p>이름 : <b><%=request.getParameter("name") %></b></p>
  <p>성별 : <b><%=request.getParameter("gender") %></b></p>
  <p>당신이 좋아하는 계절은 <b><%=String.join(" ", request.getParameterValues("season"))%></b>입니다.</p>
  <a href="javascript:history.go(-1)">다시</a>
</body>
</html>