<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>맛집 수정</title>
</head>
<style>
body{
    background-image:url("img/foodbg3.png");
    font-family: 'Jua', sans-serif;
    }
</style>
<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>



<body>
	<%@ include file="menu.jsp" %>
	<div class="container">
		<div class="row" align="center">
			<%@ include file = "dbconn.jsp"%>
			<%
				String id=(String)session.getAttribute("id");
			
				PreparedStatement pstmt=null;		
				ResultSet rs=null;
				
				int result=0;
				
				
				String sql = "select * from hot_place where f_id=? ";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1,id);
				
				rs = pstmt.executeQuery();
				
				while (rs.next()){
			%>
			<div class="col-md-5">
				<img src="./images/<%=rs.getString("filename") %>" style="width:300px; height: 360px;">
			</div>
			<div class="col-md-7">
				<h3><%=rs.getString("placename") %></h3>
				<p>맛집 주소: <%=rs.getString("placeaddress") %>
				<p>평균 가격: <%=rs.getString("placeprice")%>원
				<p>음식 유형: <%=rs.getString("foodtype")%> 
				<%
					
				%>
					<a href ="./updateplace.jsp?id=<%=rs.getString("placeno") %>"
					class="btn btn-secondary" role="button">수정 &raquo;></a>
				
			</div>
			<hr style="width:90%;height:4px;border:none;background-color:rgba(0,51,0,0.7);">
			<%
				}
				rs.close();
				conn.close();
				
			%>
		</div>
		<hr>
	</div>
</body>
</html>