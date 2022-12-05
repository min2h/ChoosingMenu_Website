<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
#tagline {
	margin-left:auto;
	margin-right: auto;
}
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>I_WILL_PICK_UP</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <link href="https://fonts.googleapis.com/css?family=Comfortaa:700" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="index.css">
	<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>
</head>
<style>
body{
position: body}
.login_wrap{
	width: 100%;
	height: 50px;
	position: absolute;
	top:0;
	right:0; 
	z-index: 999;
	
}	
.gnb{
	float:right;}
.gnb > li{
	margin-right:50px;
	margin-top:20px;
	float: left;
	font-family: 'Jua', sans-serif; 
	font-size: 20px;
}
.gnb > li >a{
display:block;
font-size: 30px;
font-family: 'Jua', sans-serif; 
}

#links{
	font-size: 25px;
}
</style>
<body>
    <%--
    <div id="loading">
        <div id="spinner"></div>
    </div> 
    --%>
    <!--상단 네비  -->
    
    
    <div class="login_wrap">
   	 	<ul class="gnb">
   	 		<li><a href="LoginMain.jsp">LOGIN</a></li>
   	 	</ul>
    </div>
    <!--  -->
    <div id="header" class="animated slideInDown" style="animation-delay:0.3s;">
    <div id="title" ><a href="#">I WILL PICK UP</a></div><br>
    <div id="links">
        <a href="https://app.catchtable.co.kr/">CATCH TABLE</a>
        <a href="https://www.mangoplate.com/" style="margin:0px 60px;">MANGO PLATE</a>
        <a href="https://www.siksinhot.com/">SIKSIN</a>
    </div>
    </div>

    <center>
    <div id="middle">
        <div id="tagline" class="animated zoomIn" style="animation-delay:0.3s;">
            <button class="btn_one" onclick="location.href='LoginMain.jsp'">RANDOM ROULETTE</button>
            <button class="btn_one" onclick="location.href='LoginMain.jsp'">CHOOSE Q&A</button>
            <button class="btn_one" onclick="location.href='LoginMain.jsp'">SEARCH PLACE</button>
            <button class="btn_one" onclick="location.href='LoginMain.jsp'">RECOMMAND COMMUNITY</button>
            
        </div>
    </div>
    </center>

    
    <div id="footer">
        made by MinHyoung <br><br> <a href="https://github.com/min2h">GitHub</a>
    </div>
<script src="index.js" type="text/javascript"></script>
</body>
</html>