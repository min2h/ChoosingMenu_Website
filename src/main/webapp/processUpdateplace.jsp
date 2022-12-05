<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dto.place"%>
<%@page import="dao.placerepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
	request.setCharacterEncoding("utf-8");
		String filename="";
		String realFolder ="./images/";
		int maxSize = 5 * 1024 * 1024;
		String encType = "utf-8";
		String filePath = application.getRealPath(realFolder);
		
		MultipartRequest multi = new MultipartRequest(request,
		filePath, maxSize, encType, new DefaultFileRenamePolicy());
		
		String placeno = multi.getParameter("placeno");
		String placename = multi.getParameter("placename");
		String placeaddress = multi.getParameter("placeaddress");
		String placeprice = multi.getParameter("placeprice");
		String placedescription = multi.getParameter("placedescription");
		String foodtype = multi.getParameter("foodtype");
		String f_id=(String)session.getAttribute("id");
		int price;
		if(placeprice.isEmpty())
			price=0;
		else
			price=Integer.valueOf(placeprice);
		
		
		
		Enumeration files = multi.getFileNames();
		String fname = (String)files.nextElement();
		filename = multi.getFilesystemName(fname);
		
		int result=0;
		// db에 값 추가
		PreparedStatement pstmt=null;
		String sql ="update hot_place set placename=?, placeaddress=?, " +
					"placeprice=?, placedescription=?, " +
					"foodtype=?, filename=? " +
					"where placeno=? and f_id= ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, placename);
		pstmt.setString(2, placeaddress);
		pstmt.setString(3, placeprice);
		pstmt.setString(4, placedescription);
		pstmt.setString(5, foodtype);
		pstmt.setString(6, filename);
		pstmt.setString(7, placeno);
		pstmt.setString(8, f_id);
		result=pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		
		response.sendRedirect("places.jsp");
	%>
	
</body>
</html>