<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% int sum = 0;
		for(int i = 1; i<=100; i++){
			sum+=i;	
		}
	// 자바 주석은 웹에서 보이지 않기때문에 중요한 주석은 자바에서 처리하기
	%>
	<h1><%=sum %></h1>
	<script>
		let sum = 0;
		for(let i = 1; i<=100; i++){
			sum+=i;
		}
		console.log(sum);
	</script>  
</body>
</html>