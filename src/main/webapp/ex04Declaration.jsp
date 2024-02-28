<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		JSP 주석
		선언문 (Declaration)
		- 필드 또는 메소드를 만들때 사용
	--%>
	<%!public int num1 = 10; // 전역변수(필드)

	// 메소드 정의
	public String hello(String name) {
		return name + "님 환영합니다";
	}%>

	<%=hello("박병관")%>
	<%
	int num2 = 10; // Service 메소드 안 지역변수
	%>
</body>
</html>