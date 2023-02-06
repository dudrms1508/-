<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch06 : selProduct</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	session.setAttribute("username", request.getParameter("username"));
	
%>
<body>
<div align="center">
	<h2>상품선택</h2>
	<%=session.getAttribute("username")	%>님 환영합니다.
	<HR>
	<form name="form1" method="POST" action="add.jsp">
		<SELECT name="product">
			<option>사과</otpion>
			<option>귤</otpion>
			<option>파인애플</otpion>
			<option>자몽</otpion>
			<option>레몬</otpion>
		</SELECT>
		<input type="submit" value="추가"/>	
	</form>
	<a href="checkOut.jsp">계산</a>
</div>

</body>
</html>