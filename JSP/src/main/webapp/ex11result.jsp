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
	request.setCharacterEncoding("EUC-KR");    
	String url = request.getParameter("url");   
	if(url.equals("네이버")){      
		response.sendRedirect("https://www.naver.com");
	} else if(url.equals("다음")){
		response.sendRedirect("https://www.daum.net");
	} else if(url.equals("구글")){
		response.sendRedirect("https://www.google.com");
	} else if(url.equals("스마트인재개발원")){
		response.sendRedirect("https://smhrd.or.kr/");
	}
	%>
</body>
</html>