<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="./js/validation.js"></script>
<body>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
	<style>
	body{
    background-image:url("img/foodbg3.png");
    font-family: 'Jua', sans-serif;
    }
	</style>
	
<%@ include file = "dbconn.jsp" %>
<%
	String id=(String)session.getAttribute("id");
	String placeno = request.getParameter("placeno");
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	int result = 0;
	
	String sql = "select * from hot_place where f_id = ? ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	
	if (rs.next()){
%>
	<jsp:include page="menu.jsp"/>
	<div class="container">
		<form name ="newplace" action="processUpdateplace.jsp" method="post" class="form-horizontal" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">맛집 코드</label>
				<div class="col-sm-3">
					<%=rs.getString("placeno")%><input type="hidden" value ="<%=rs.getString("placeno")%>" name="placeno" class="form-control">
				</div>
			</div>
			
			<input type="hidden" name="f_id" class="form-control" value="<%=id%>">
			
			<div class="form-group row">
				<label class="col-sm-2">맛집명</label>
				<div class ="col-sm-3">
					<input type="text" name="placename" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">맛집 주소</label>
				<div class ="col-sm-3">
					<input type="text" name="placeaddress" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">맛집 설명</label>
				<div class ="col-sm-5">
					<textarea rows="4" cols="50" name="placedescription" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">평균 가격</label>
				<div class ="col-sm-3">
					<input placeholder='숫자 입력' type="text" name="placeprice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">음식 유형</label>
				<div class ="col-sm-5">
					<input type="radio" name="foodtype" value="한식">한식
					<input type="radio" name="foodtype" value="일식">일식
					<input type="radio" name="foodtype" value="양식">양식
					<input type="radio" name="foodtype" value="중식">중식
					<input type="radio" name="foodtype" value="분식">분식
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class ="col-sm-3">
					<input type="file" name="filename" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" value="수정" class="btn btn-primary " onclick="CheckAddPlace()">
				</div>
			</div>
		</form>
	</div>
	<%
	}
	rs.close();
	pstmt.close();
	conn.close();
%>
</body>
</html>