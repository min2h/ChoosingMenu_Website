<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 삭제</title>
</head>
<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>
<body>

<%@ include file = "dbconn.jsp" %>
<%
	String id = request.getParameter("placeno");
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	int result = 0;
	
	String sql = "select * from hot_place where placeno = ? ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	
	if (rs.next()){
		sql="delete from hot_place where placeno = ? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		result = pstmt.executeUpdate();
	}
	
	request.setAttribute("result", result);
	
%>
<jsp:forward page="deleteResult.jsp"></jsp:forward>
</body>
</html>