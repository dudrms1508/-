<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
<H2>계산결과</H2>
	<HR>
	<%= request.getParameter("num1") %>
	<%= request.getParameter("operator") %>
	<%= request.getParameter("num2")+ "=" %>
	<%= request.getAttribute("result") %>

</center>

</body>
</html>