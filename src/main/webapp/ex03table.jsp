<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px black">
		<tr>

			<% for (int i = 1; i <= 10; i++) { %>
				<td><%=i%></td>
			<% } %>

		</tr>
	</table>
	
	<%
	for (int i = 0; i < 10; i++) {
		out.println("<td>" + (i + 1) + "</td>");
	}
	%>

</body>
</html>