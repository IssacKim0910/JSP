<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	session.setAttribute("name", "박병관");
	
	// 세션의 생명주기 설정
	session.setMaxInactiveInterval(10);
	%>
</body>
</html>