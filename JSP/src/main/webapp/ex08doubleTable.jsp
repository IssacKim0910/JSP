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
	String floor = request.getParameter("floor");
	String room = request.getParameter("room");
	int floor2 = Integer.parseInt(floor);
	int room2 = Integer.parseInt(room);
	%>
	<%=floor2%>층
	<br>
	<%=room2%>방
	<table border='1px'>
		<%
		for (int i = 0; i < floor2; i++) {
			out.print("<tr>");
			for (int j = 0; j < room2; j++) {
				out.print("<td>" + j + "</td>");
			}
			out.print("</tr>");
		}
		%>
	</table>
</body>
</html>