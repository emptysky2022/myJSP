<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Query String</title>
<script type="text/javascript" src="param.js"></script>
</head>
<body>
	<form name="frm" action="param">
		이름 입력 : <input type="text" name="id"><br>
		나이 입력 : <input type="text" name="age"><br>
		<input type="submit" value="전송" onclick="return check()">
	</form>
</body>
</html>