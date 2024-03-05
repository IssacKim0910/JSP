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
		// 서버에서 페이지를 이동하는 방식 
		// Redirect 방식
		//	- Client에게 요청할 주소를 다시 전달해서 요청하게 하는 방식
		
		// 실습.
		// 현재 페이지를 실행했을때 네이버 메인페이지로 요청하게 하기
		response.sendRedirect("https:www.naver.com");
	%>
</body>
</html>