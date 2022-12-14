<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
<div id="wrap" align="center">
  <h1>게시글 등록</h1>
  <form action="BoardServlet" method="post" name="frm">
    <input type="hidden" name="command" value="board_write">
    <table>
      <tr>
        <th>작성자</th>
        <td><input type="text" name="name" required> * 필수</td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td><input type="password" name="pass" required> * 필수(게시물 수정, 삭제 시 필요합니다.)</td>
      </tr>
      <tr>
        <th>이메일</th>
        <td><input type="email" name="email"></td>
      </tr>
      <tr>
        <th>제목</th>
        <td><input type="text" name="title" size="70"> * 필수</td>
      </tr>
      <tr>
        <th>내용</th>
        <td><textarea name="content" rows="15" cols="70"></textarea></td>
      </tr>
    </table>
    <br><br>
    <input type="submit" value="등록" onclick="return boardCheck()">
    <input type="reset" value="다시작성">
    <input type="button" value="돌아가기" onclick="location.href='BoardServlet?command=board_list'">
  </form>
</div>
</body>
</html>