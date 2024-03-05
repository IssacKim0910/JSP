<%@page import="java.util.ArrayList"%>
<%@page import="com.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>전화번호부</h2>
	<table border="1px">
		<thead>
			<tr>
				<th>순번</th>
				<th>이름</th>
				<th>나이</th>
				<th>번호</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>

			<%-- session에서 받아온 list 정보를 아래에 출력하시오--%>
			<%
			ArrayList<MemberDTO> list = (ArrayList<MemberDTO>) session.getAttribute("list");
			
			for (int i = 0; i < list.size(); i++) {
				out.print("<tr><td>" + (i + 1) + "</td>");
				out.print("<td>" + list.get(i).getName() + "</td>");
				out.print("<td>" + list.get(i).getAge() + "</td>");
				out.print("<td>" + list.get(i).getPhone() + "</td>");
				out.print("<td>" + list.get(i).getAddr() + "</td></tr>");

			}
			%>

		</tbody>
	</table>
</body>
</html>