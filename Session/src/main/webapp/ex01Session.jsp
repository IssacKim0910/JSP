<%@page import="javax.management.StringValueExp"%>
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
		Session
		 - Client의 정보를 지속적으로 유지하기 위한 방법
		 
		특징. - Session 브라우저당 1개 발급이 된다
			 - 브라우저를 종료하는 순간 세션은 만료(삭제) 된다 or 30분이상 아무런행동 안했을때
		저장위치 : Server PC 
		저장형식 : Object 
		보안 : Cookie에 비해 상대적으로 강력함
		용량제한 : Server PC의 저장소가 허용하는 한
		
		총정리 : Client의 정보 중 중요한 정보를 유지할때 Session을 활용한다
				(예 : 로그인정보, 계좌정보 등)
	--%> 
	
	<%
		// Session에 아이디와 비밀번호를 저장
		// .setAttribute ("name", value); value는 Object(클래스)
		// String -> Object (UpCasting)⭐  오버로딩, 다형성 해당
		session.setAttribute("id", "pbk");
		
		// Session에 저장된 값 가져와서 확인하기 
		// Object -> String
		String id = String.valueOf(session.getAttribute("id"));
		
		// Session 삭제하기 
		session.removeAttribute("id");
		session.invalidate();
	%>
	<%= id %>
</body>
</html>