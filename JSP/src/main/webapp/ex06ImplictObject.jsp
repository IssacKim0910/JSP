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
		내장객체 : JSP안에서 객체를 생성하지 않고도 사용할 수 있는 객체
	--%>
	<table border='1px'>
		<tr>
			<%
			for (int i = 1; i <= 5; i++) {
				// 내장객체 out 활용하기 
				out.print("<td>" + i + "</td>");
			}
			%>
		</tr>
	</table>
</body>
</html>