<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
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

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String phone = request.getParameter("phone");

	// JDBC

	// 1. 드라이버 동적로딩
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	try {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String password = "hr";

		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, user, password); // url, user, password를 변수로 처리해도됨

		out.print("데이터베이스 연결이 성공했습니다.");
		System.out.println("데이터베이스 연결 성공");
		
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?)";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, phone);
		System.out.println("회원등록 성공");
		psmt.executeUpdate();
	} catch (SQLException ex) {
		out.print("데이터베이스 연결이 실패했습니다.");
		out.print("SQLException : " + ex.getMessage());
	} finally {
		if (conn != null) {
			conn.close();
			System.out.println("연결종료");
		}
	}

	// 2. 커넥션 연결

	// 3. SQL문 작성 및 실행

	// 3.SQL문장 실행
	// - PreparedStatement

	// executeUpdate()는 실행한 문장의 개수를 반환

	// 4. 연결종료
	%>
</body>
</html>