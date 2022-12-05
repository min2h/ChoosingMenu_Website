<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="원판 돌리기 추첨 사이트">
    <meta property="og:title" content="랜덤 돌림판 Random Roulette">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://dolimpan.netlify.app/">
    <meta property="og:description" content="원판 돌리기 추첨 사이트">
    <meta property="og:image" content="static/dolimpan.png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta name="google-site-verification" content="rc3UMPHLSf5ifn3slyl_A4o3kj9y2oquWTr6Yoa4cTs">
    <meta name="naver-site-verification" content="a596ddd8a0d94c5dfb926eb5571434b5c9a8d1d7">
    <%--- <link rel="stylesheet" href="css/style.css"> ---%>
    
    <title>돌려돌려돌림판</title>
</head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
.input-name, .input-weight{
	width: 200px;
	height: 50px;
}
.current-name{
	display:inline-block;
	margin-left:230px;
}
.roll-btn{
	background-color:F5E8C7;
	color:002B5B;
	text-align: center;
	display: inline-block;
	font-size: 20px;
	cursor: pointer;
	border-radius: 40px;
	opacity: 0.6;
	margin: 0px 0px 50px 240px;
	padding: 20px;

  transition: 0.3s;
}
.roll-btn:hover {opacity: 2}


.roulette-container{
float:left;}
#ul{
float:left;}
</style>

<body>
	<div class="container">
	<a class="navbar-brand" href="./main.jsp">로고</a>
	</div>
    <div class="container">
        <h1 class="current-name">뭐 먹을래??</h1>
        <div class="main">
            <div class="roulette-container">
                <div class="canvas-container"><canvas id="roulette" width="600" height="600"></canvas></div>
                <button class="roll-btn">돌려 돌려</button>
            </div>
            <ul id="ul">
                <li id="list-0" class="list">
                    <div></div>
                    <input id="name-0" class="input-name " type="text" placeholder="음식추가">
                     <input id="weight-0" class="input-weight" type="number" value="1" min="0"> <span id="percent-0"
                        class="percent">100%</span>
                </li>
            </ul>
        </div>
    </div>
    <script src="js/main.js"></script>
</body>

</html>