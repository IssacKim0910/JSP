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
	String name = (String) session.getAttribute("name");

	if (name == null) {
		out.print("<script>alert('10초동안 아무런 동작을 하지않아 메인페이지로 이동');");
		out.print("location.href='https:www.naver.com'; </script>");
	} else {
		out.print(name + "님 환영합니다.");
	}
	%>
</body>
</html>