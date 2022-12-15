<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<style type="text/css">
  span{
  	display: inline-block;
  	width: 115px;
  }
  .btn{
  	margin: 0 50px;
  }
</style>
</head>
<body>
  <h1>설문 조사</h1>
  <form action="02_research.jsp">
	  <span>이름 :</span>
	  <input type="text" name="name"><br>
	  <span>성별 :</span>
	  <label for="gender"></label>
	  <input type="radio" name="gender" value="남자" checked> 남자
	  <input type="radio" name="gender" value="여자"> 여자<br>
	  <span>좋아하는 계절 :</span>
	  <label for="season"></label>
	  <input type="checkbox" name="season" value="봄">봄 
	  <input type="checkbox" name="season" value="여름">여름 
	  <input type="checkbox" name="season" value="가을">가을
	  <input type="checkbox" name="season" value="겨울">겨울<br>
	  <input class="btn" type="submit" value="전송">
	  <input class="btn" type="reset" value="취소">
  </form>
</body>
</html>