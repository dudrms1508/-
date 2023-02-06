<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="CENTER">
<h2>include 지시어 테스트</h2>
<HR>

<%@ include file="menu.jsp" %>
<P>
<table border=0 cellpadding=5 cellspacing=1>
	<tr>
<td><font size=-1><%@include file="news.jsp" %></font></td>
<td width="20">&nbsp;</td>
<td><font size=-1><%@include file="shopping.jsp" %></font></td>
	</tr>
</table>
</div>

</body>
</html>