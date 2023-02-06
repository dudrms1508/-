<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	pageEnd.jsp에서출력
	<%= pageContext.getAttribute("p") %><br>
	<%= request.getAttribute("r") %><br>
	

</body>
</html>