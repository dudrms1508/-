<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05: 스크립트릿 테스트</title>
</head>
<body>
<div align="center">
<H2>스크립트릿 테스트1</H2>
<HR>

<%
	
	for(int i=1; i<10; i++) {
%>
	<%=i %> <br>
<%		
	}
%>

<%-- <% for(int i=1; i<10; i++)
	out.println(i); 과 같음 --%>

</div>
</body>
</html>