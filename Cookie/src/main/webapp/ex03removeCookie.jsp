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
		// Client가 가진 쿠키를 삭제하기
		
		// 1.삭제하고 싶은 쿠키의 동일한 이름을 가진 쿠키를 생성 
		Cookie cookie = new Cookie("food","");
		
		// 2. 나이를 0초로 만들어버린다 
		cookie.setMaxAge(0);
		
		// 3.해당 쿠키를 client에 보내주면 끝
		response.addCookie(cookie);
		
	%>
</body>
</html>