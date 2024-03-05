<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="ex05error.jsp"%> 
<!-- error가 발생하면 이동할페이지 500에러를 보여주면 정보가 노출될수있음 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 지시자(Directive)
		- JSP가 Servlet로 변환될때 필요한 정보를 기술하는 것
		
	 --%>
	 <% String name = "김동혁"; %>
	 <% Random ran = new Random(); %>
	 <%= name %>님 환영합니다!
	 <% int a = 10 / 0; %>
	 
</body>
</html>