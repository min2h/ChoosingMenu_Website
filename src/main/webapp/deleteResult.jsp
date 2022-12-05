<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 파비콘 -->
    <link rel="shortcut icon" href="./images/favicon.png"/>
<body>
	<%-- result가 0보다 크면 삭제된 것 --%>
	<c:if test="${result > 0 }">
		<script type="text/javascript">
			alert("삭제되었습니다.");
			location.href="places.jsp";
		</script>
	</c:if>
	<c:if test="${result==0 }">
		<script type="text/javascript">
			alert("삭제할 제품이 없습니다.");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>