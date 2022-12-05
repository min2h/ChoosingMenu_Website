<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="myCSS.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>
</head>
<style>
body{
    background-image:url("img/foodbg3.png");
    font-family: 'Jua', sans-serif;
    }
</style>
<body>
	<form action="LoginService.jsp" method="post">
		<div>
			<fieldset>
				<legend>
					<h1 style="font-size: 50px;">로그인 페이지</h1>
				</legend>
				<table style="font-size: 30px;">
					<tr>
						<td>아이디</td>
						<td><input placeholder="아이디 입력" type="text" name="id"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input placeholder="비밀번호 입력" type="password" name="pw"></td>
					</tr>
					<tr>
						<td colspan="2">
						<input style="font-size: 20px;" type="submit" value="로그인">
						<input style="font-size: 20px;" type="reset" value="초기화">
						<br>
						<h4 style="font-size: 20px;">아이디가 없습니다.<a href="join.jsp" style="font-size: 20px;">Sign in</a></h4>
						</td>
					</tr>
					
				</table>
			</fieldset>
		</div>
	</form>
</body>
</html>