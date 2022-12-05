<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// Servic는 Java code만 작성되므로 View를 구현하는 jsp보다 Servlet으로 작성하여 model1에서 model2로 변경 작업
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String tel = request.getParameter("tel");
			String nick = request.getParameter("nick");

			// 0. lib 폴더 안에 ojdbc6.jar 파일 넣기
			// C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib에서 WebContent\WEB-INF\lib으로 ojdc6.jar파일 이동

			// 1. 어떠한 Driver를 사용할 것인지 동적 로딩
			// 2. 해당 DBMS에 관련된 Driver 클래스 파일을 작성한다.
			Class.forName("com.mysql.jdbc.Driver"); // 오라클 드라이버의 경로 작성 : 오라클 드라이버를 사용하겠다는 선언
			// OracleDriver라는 클래스 파일 실행(대문자로 시작, 패키지는 폴더이므로 소문자로 시작)
			// jsp는 기본적으로 예외처리가 되어있어 따로 작성하지 않아도 됨

			// 3. Java Program과 DataBase를 연결하는 Connection 객체 생성
			String jdbcURL="jdbc:mysql://localhost:3306/pickupdb";
			String dbUser="root";
			String dbPass="rootpw";

			Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
	%>
</body>
</html>