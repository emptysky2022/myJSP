<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 관리</title>
<link rel="stylesheet" type="text/css" href="css/wrap.css">
</head>
<body>
<div id="wrap">
<h1>리스트</h1>
<table>
  <tr class="insert">
    <td colspan="5"><a href="EmployeeServlet?control=employee_insert_form">정보등록</a></td>
  </tr>
  <tr>
    <th>아이디</th>
    <th>이름</th>
    <th>권한</th>
    <th>성별</th>
    <th>전화번호</th>
  </tr>
  <c:forEach var="item" items="${employees }">
    <tr>
      <td>${item.id }</td>
      <td>${item.name }</td>
      <td><c:choose>
        <c:when test="${item.lev == 'A'}">일반사원</c:when>
        <c:when test="${item.lev == 'B'}">팀장</c:when>
        <c:when test="${item.lev == 'D'}">임원</c:when>
        <c:when test="${item.lev == 'E'}">대표</c:when>
      </c:choose></td>
      <td>${item.gender }</td>
      <td>${item.phone }</td>
    </tr>
  </c:forEach>
</table>
</div>
</body>
</html>