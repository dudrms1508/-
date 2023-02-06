<%@ page language="java" contentType="text/html; charset=UTF-8" import="ch07.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="ch07.AddrBean" />
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="ch07.AddManager" scope="application"/>
<%
	am.add(addr);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CH07 : addr_add</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름 : <jsp:getProperty property="username" name="addr" /><p>
전화번호 : <%=addr.getTel() %> <p>
이메일 : <%=addr.getEmail() %> <p>
성별 : <%=addr.getSex() %>
<hr>
<a href="Addr_list.jsp">목록보기</a>

</div>
</body>
</html>