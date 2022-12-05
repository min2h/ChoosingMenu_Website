<%@page import="dao.placerepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.place" %>
<!DOCTYPE html>
<html>
<head>
<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>맛집 목록</title>
</head>
<style>
#col-md-7{
	position: static;
}
    body{
    background-image:url("img/foodbg3.png");
    font-family: 'Jua', sans-serif;
    }
</style>
<body>
	<jsp:include page="menu.jsp"/>
	
	<div class="container">
		<div class="row" align="center">
			<%@ include file = "dbconn.jsp"%>
			<%
				Statement stat=null;
				ResultSet rs=null;
				stat = conn.createStatement();
				
				String sql = "select * from hot_place";
				rs = stat.executeQuery(sql);
				
				while (rs.next()){
					
			%>
			<div class="col-md-5">
				<img src="./images/<%=rs.getString("filename") %>" style="width:300px; height: 360px;">
				
				
			</div>
			<div class="col-md-7">
				<h1>맛집 이름: <%=rs.getString("placename") %></h1>
				<h4>맛집 주소: <%=rs.getString("placeaddress") %></h4>
				<h4>평균 가격: <%=rs.getString("placeprice")%>원</h4>
				<p>맛집 설명: <%=rs.getString("placedescription")%>
				<p>음식 유형: <%=rs.getString("foodtype")%>
				<p> <a href ="./place.jsp?id=<%=rs.getString("placeno") %>"
					class="btn btn-secondary" role="button" >상세 정보 &raquo;></a>
			</div>
			<hr style="width:90%;height:4px;border:none;background-color:rgba(0,51,0,0.7);">
			<%
				}
				rs.close();
				stat.close();
				conn.close();
				
			%>
			
		</div>
	</div>
</body>
</html>