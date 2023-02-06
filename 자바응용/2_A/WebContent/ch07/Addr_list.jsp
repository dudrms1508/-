<%@ page language="java" contentType="text/html; charset=UTF-8" import="ch07.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="ch07.AddManager" scope="application"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07: 주소록 목록</title>
</head>
<body>
<div align="center">
<h2>주소록</h2>
<hr>
<a href="addr_form.html">주소추가	</a><P>
<table border=1 width=500>
<tr><td>이름</td>
<td>전화번호</td>
<td>이메일</td>
<td>성별</td>
</tr>
<%
	for(AddrBean ab : am.getAddrList()){
		
	
%>
	<tr>
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
	<td><%=ab.getSex() %></td></tr>
	
<%
	}
%>
</table>
</div>

</body>
</html>