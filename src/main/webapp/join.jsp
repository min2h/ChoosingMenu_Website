<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<% request.setCharacterEncoding("utf-8");%>
</head>
<link rel="stylesheet" type="text/css" href="./css/myCSS.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
<style>
body{
    background-image:url("img/foodbg3.png");
    font-family: 'Jua', sans-serif;
    }
</style>
<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>
<body>
	<form action="joinService.jsp" method="post">
		<div>
			<fieldset>
				<legend>
					<h1>회원가입 페이지</h1>
				</legend>
				<table>
					<tr>
						<td>아이디</td>
						<td><input placeholder="아이디 입력" type="text" name="id"></td>
					</tr>
					<tr>
						<td>패스워드</td>
						<td><input placeholder="패스워드 입력" type="password" name="pw"></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td><input placeholder="닉네임 입력" type="text" name="nick"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input placeholder="전화번호 입력" type="text" name="tel"></td>
					</tr>
					<tr>
						<td colspan=2 >
						<input style="font-size: 20px" type="submit" value="회원가입">
						<input style="font-size: 20px" type="reset" value="초기화">
						</td>
					</tr>
				</table>
					<p style="font-size: 20px;">아이디가 있습니다.<a href="LoginMain.jsp" style="font-size: 20px;">Sign up</a></p>
			</fieldset>
		</div>
	</form>
</body>
</html>