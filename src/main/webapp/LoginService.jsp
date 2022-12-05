<%@page import="java.sql.ResultSet"%>
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
</head>
<body>
<%@ include file="Login_dbconn.jsp" %>
<%
		String sql = "select * from mymember where id = ? and pw = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		ResultSet rs = psmt.executeQuery(); // 표 형태로 데이터와 커서를 가지고 있는 ResultSet 객체

		String l_id = null;
		String l_pw = null;
		String l_tel = null;
		String l_nick = null;

		if (rs.next()) {
			// 커서를 한 칸 다음으로 내릴 수 있다는 것은 로그인을 성공했다.
			//String l_id = rs.getString("id");  // DB로 가져오고 싶은 컬럼이름
			l_id = rs.getString(1); // 또는 1번 째 컬럼
			l_pw = rs.getString(2); // 2번 째 컬럼
			l_tel = rs.getString(3); // 3번 째 컬럼
			l_nick = rs.getString(4); // 4번 째 컬럼
		}

		if (rs != null)
			rs.close();
		if (psmt != null)
			psmt.close();
		if (conn != null)
			conn.close();

		if (l_id != null) {
			session.setAttribute("id", l_id);
			session.setAttribute("nick", l_nick);
			response.sendRedirect("index2.jsp");
			
		} else {
			%>
			<script type="text/javascript">
			alert("아이디와 비밀번호를 확인해주세요.");
			location.href="Login.jsp";
			</script>;
		<%}
	%>
</body>
</html>