<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	div, fieldset {
		margin: 20px auto;
		text-align: center;
	}
</style>
</head>
<body>
	<%
	int item = Integer.parseInt(request.getParameter("item"));
	%>
	<div>
		<fieldset>
			<legend>랜덤당첨작성</legend>
			<form action="ex09randomWinner.jsp" method="post">
				주제 : <input type="text" name="title">
		<%
		for (int i = 1; i <= item; i++) {
			out.print("<br>");
			out.print("아이템" + i + ":" + "<input type='text' name='lunch'>");
		}
		%>
				<br> <input type="submit" value="시작">
			</form>
		</fieldset>
	</div>
</body>
</html>