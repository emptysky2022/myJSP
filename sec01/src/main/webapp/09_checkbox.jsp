<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="check">
		<input type="checkbox" name="item" value="신발">신발
		<input type="checkbox" name="item" value="가방">가방
		<input type="checkbox" name="item" value="벨트">벨트<br>
		<input type="checkbox" name="item" value="모자">모자
		<input type="checkbox" name="item" value="시계">시계
		<input type="checkbox" name="item" value="쥬얼리">쥬얼리<br>
		
		<span style="float:left; margin-right:20px">
			<label for="job" size="1">직업</label>
			<select id="job" name="job" size="1">
				<option value="">선택하세요</option>
				<option value="teacher">선생</option>
				<option value="student">학생</option>
				<option value="it">it업계</option>
				<option value="boss">사장</option>
				<option value="amazing">회장</option>
			</select>
			
		</span>
		<br>
		<label for="interest" style="float:left;">관심분야</label>
			<select id="interest" name="interest" size="5" multiple="multiple">
				<option value="game">게임</option>
				<option value="web">웹페이지</option>
				<option value="program">응용 프로그램</option>
				<option value="app">앱</option>
			</select>
			
		<input type="submit" value="전송" style="clear:both; margin-left:10px">
	</form>
</body>
</html>