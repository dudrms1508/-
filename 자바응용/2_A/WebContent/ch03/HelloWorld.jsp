<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch03 : title here</title>
</head>
<body>
<div align="center">
	<H2> HelloWorld : 헬로월드</H2>
	<HR>
	<%-- JSP 표현식으로 자바의 Date 클래스를 이용한 현재 날짜 시간 출력 --%>
	현재 날짜와 시간은 : <%=new java.util.Date() %>
</div>

</body>
</html>