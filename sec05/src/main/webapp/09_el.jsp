<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member2" class="com.keduit.MemberBean"/>
<jsp:setProperty property="*" name="member2"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h1>param으로 받아오기</h1>
이름 : ${param.name}<br>
아이디 : ${param.id}<br>
별명 : ${param.nickname}<br>
비밀번호 : ${param.pwd}<br>
이메일 : ${param.email}<br>
전화번호 : ${param.phone}<br>
<h1>request.attribute로 받아오기</h1>
이름 : ${member.name}<br>
아이디 : ${member.userid}<br>
별명 : ${member.nickname}<br>
비밀번호 : ${member.pwd}<br>
이메일 : ${member.email}<br>
전화번호 : ${member.phone}<br>
<h1>jsp bean 사용</h1>
이름 : ${member2.name}<br>
아이디 : ${member2.userid}<br>
아이디 : <jsp:getProperty property="userid" name="member2"/><br>
아이디 : ${member2["userid"]}<br>
별명 : ${member2.nickname}<br>
비밀번호 : ${member2.pwd}<br>
이메일 : ${member2.email}<br>
전화번호 : ${member2.phone}<br>
</body>
</html>