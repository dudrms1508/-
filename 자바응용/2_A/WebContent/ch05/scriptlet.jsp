<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05: ��ũ��Ʈ�� �׽�Ʈ</title>
</head>
<body>
<div align="center">
<H2>��ũ��Ʈ�� �׽�Ʈ1</H2>
<HR>

<%
	
	for(int i=1; i<10; i++) {
%>
	<%=i %> <br>
<%		
	}
%>

<%-- <% for(int i=1; i<10; i++)
	out.println(i); �� ���� --%>

</div>
</body>
</html>