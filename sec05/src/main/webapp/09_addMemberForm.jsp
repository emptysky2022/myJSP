<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 입력</title>
</head>
<body>
<form action="MemberServlet">
  <label for="name">이름 : </label>
  <input type="text" name="name" id="name"><br>
  <label for="id">아이디 : </label>
  <input type="text" name="id" id="id"><br>
  <label for="nickname">별명 : </label>
  <input type="text" name="nickname" id="nickname"><br>
  <label for="userpwd">비밀번호 : </label>
  <input type="password" name="pwd" id="pwd"><br>
  <label for="email">이메일 : </label>
  <input type="text" name="email" id="email"><br>
  <label for="phone">전화번호 : </label>
  <input type="text" name="phone" id="phone"><br>
  <input type="submit" value="로그인">
  <input type="reset" value="취소">
</form>
</body>
</html>