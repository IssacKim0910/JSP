<%@page import="javax.swing.text.AbstractDocument.BranchElement"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
fieldset {
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
	<div> 
		<fieldset>
			<legend>랜덤당첨결과</legend>
			<%
			request.setCharacterEncoding("EUC-KR");
			Random rd = new Random();
			
			String title = request.getParameter("title");
			String[] lunch = request.getParameterValues("lunch");

			out.print(title + "<br>");
			out.print(lunch[rd.nextInt(lunch.length)]);
			%>
		</fieldset>
	</div>
</body>
</html>