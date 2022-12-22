<%@page import="java.sql.Connection"%>
<%@page import="com.keduit.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DAO의 DBCP 연동 테스트</title>
</head>
<body>
<%
MemberDAO memDAO = MemberDAO.getInstance();
Connection conn = memDAO.getConnection();
out.println("dbcp 연동 성공!");
%>
</body>
</html>