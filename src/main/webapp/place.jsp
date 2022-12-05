<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.place" %>
<%@ page import = "dao.placerepository" %>

<!DOCTYPE html>
<html>
<style>
body{
    background-image:url("img/foodbg3.png");
    font-family: 'Jua', sans-serif;
    }
</style>
<head>
<meta charset="UTF-8">
<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>
<link rel="stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
<title>맛집 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<%@ include file="dbconn.jsp" %>
	<%
	String id=request.getParameter("id");
	PreparedStatement pstat=null;
	ResultSet rs=null;
	String sql="select * from hot_place where placeno = ?";
	pstat = conn.prepareStatement(sql);
	pstat.setString(1, id);
	rs=pstat.executeQuery();
	
	if (rs.next()){
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./images/<%=rs.getString("filename") %>" style="width:360px; height: 480px;"/>
			</div>	
			<div class="col-md-7">
			<h1>맛집 이름: <%=rs.getString("placename") %></h1>
				
				<h3> <b>맛집 코드 : </b><span class="badge badge-danger"><%=rs.getString("placeno") %></span></h3>
				<h3 ><b>맛집 주소:</b> <%=rs.getString("placeaddress") %></h3>
				<p><h4><b>맛집 설명</b></h4> <%=rs.getString("placedescription") %>
				
				<h4><b>음식 유형:</b> <%=rs.getString("foodtype") %></h4>				
				<h4><b>평균 가격:</b> <%=rs.getString("placeprice") %>원</h4>
				<p> <a href="./places.jsp" class= "btn btn-secondary"> 맛집
					목록 &raquo;</a>
			</div>	
			
		</div>
		<hr>
	</div>
	<%
	}
	rs.close();
	pstat.close();
	conn.close();
	%>
</body>
</html>