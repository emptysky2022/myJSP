<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록</title>
<link rel="stylesheet" type="text/css" href="css/info.css">
</head>
<body>
<div id="wrap">
  <h1>사원 등록</h1>
  <form action="EmployeeServlet" method="post" id="frm">
    <input type="hidden" name="control" value="employee_insert">
    <table>
      <tr>
        <th>아이디</th>
        <td><input type="text" name="id" required> * 필수</td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td><input type="password" name="pass" required> * 필수(게시물 수정, 삭제 시 필요합니다.)</td>
      </tr>
      <tr>
        <th>이름</th>
        <td><input type="text" name="name"></td>
      </tr>
      <tr>
        <th>권한</th>
        <td>
          <label for="level"></label>
            <select name="lev" id="level">
              <option value="">권한을 선택해주세요.</option>
              <option value="A">일반사원</option>
              <option value="B">팀장</option>
              <option value="D">임원</option>
              <option value="E">대표</option>
            </select>
        </td>
      </tr>
      <tr>
        <th>성별</th>
        <td>
          <fieldset style="width:200px">
            <legend>성별을 선택해주세요</legend>
            <input type="radio" value="1" name="gender">남<br>
            <input type="radio" value="1" name="gender">여
          </fieldset>
        </td>
      </tr>
      <tr>
        <th>전화번호</th>
        <td><input type="text" name="phone"></td>
      </tr>
      <tr>
        <th>입사일</th>
        <td><input type="date" name="enter"></td>
      </tr>
    </table>
    <br><br>
    <input type="submit" value="등록" onclick="return employeeCheck()">
    <input type="reset" value="다시작성">
    <input type="button" value="돌아가기" onclick="location.href='EmployeeServlet?control=employee_list'">
  </form>
</div>
</body>
</html>