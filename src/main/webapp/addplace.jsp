<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>맛집 등록</title>
</head>
<script type="text/javascript" src="./js/validation.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
<style>
body{
    background-image:url("img/foodbg3.png");
    font-family: 'Jua', sans-serif;
    font-size: 25px;
    }
</style>
<body>
	<%
		String id=(String)session.getAttribute("id");
	%>
	<jsp:include page="menu.jsp"/>
	<div class="container">
		<form name ="newProduct" action="processaddplace.jsp" method="post" class="form-horizontal" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">맛집 코드</label>
				<div class="col-sm-3">
					<input placeholder='P로 시작해주세요.    ex)P1234' type="text" name="placeno" class="form-control">
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
					<input type="submit" value="등록" class="btn btn-primary " onclick="CheckAddPlace()">
				</div>
			</div>
		</form>
	</div>
</body>
</html>