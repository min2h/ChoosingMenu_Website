<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("utf-8");%>
</head>
<body>
<%@ include file="Login_dbconn.jsp" %>
<%
		String sql = "insert into mymember values(?, ?, ?, ?)"; // mymember 테이블로 값을 포함하는 행을 추가하는 sql문
		PreparedStatement psmt = conn.prepareStatement(sql); // conn의 prepareStatement메소드로 sql문을 받아준다.
		psmt.setString(1, id); // String id의 값을 1번 째 물을표로 대입
		psmt.setString(2, pw); // String pw의 값을 2번 째 물음표로 대입
		psmt.setString(3, tel); // String tel의 값을 3번 째 물음표로 대입
		psmt.setString(4, nick); // String tel의 값을 4번 째 물음표로 대입
		int cnt = psmt.executeUpdate(); // psmt의 executeUpdate 메소드는 sql문장을 실행한 횟수만큼 int값을 반환

		// 5. 연결 종료 (역순)
		if (psmt != null) // 객체가 Null인 상태에서 건드리면 NullPointException 에러 발생
			psmt.close();
		if (conn != null)
			conn.close();

		if (cnt > 0) {
			response.sendRedirect("LoginMain.jsp"); // 정상적으로 sql문이 실행되었다면 main으로 페이지 이동
		} else {
			response.sendRedirect("join.jsp"); // 정상적으로 sql문이 실행되지 않았다면 join페이지로 다시 이동
		}
	%>
</body>
</html>