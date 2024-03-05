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
		// Client가 가진 Cookie를 가져와서 확인하는 방법
		
		// 1.Client가 가진 쿠키 가져오기
		Cookie[] cookies = request.getCookies();
		
		for(int i = 0; i <cookies.length; i ++){
			out.print(cookies[i].getName()+" : ");
			out.print(cookies[i].getValue()+"<br>");
		}
	%>
</body>
</html>