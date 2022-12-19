<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request info</title>
</head>
<body>
컨텍스트 패스 : <%= request.getContextPath() %><br>
요청 방식 : <%=request.getMethod() %><br>
요청한 URL : <%=request.getRequestURL() %><br>
요청한 URI : <%=request.getRequestURI() %><br>
서버의 이름 : <%=request.getServerName() %><br>
프로토콜 : <%=request.getProtocol() %><br>
<br>
앱 서버 정보 : <%=application.getServerInfo() %><br>
앱 컨텍스트 정보 : <%=application.getContextPath() %><br>
앱 리얼 패스 : <%=application.getRealPath("03_requestInfo.jsp") %><br>
MIME 타입 : <%=application.getMimeType("ex_img.jpg") %><br>

</body>
</html>