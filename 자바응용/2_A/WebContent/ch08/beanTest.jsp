<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<HR>비즈를 이용한 검색 결과<br>
<hr>
<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	String email = request.getParameter("email");
%>

<jsp:useBean id="conDB" class="ch08.ConnectDB" scope="page" />
<jsp:setProperty name="conDB" property="username" value="<%= username %>" />
<jsp:setProperty name="conDB" property="email" value="<%= email %>"	/>

<%
	ResultSet rs = (ResultSet)conDB.getRs();
	out.println("<hr><br> jdbcTest.jsp에서 출력 <br><hr>");
	if(rs == null)
		out.println("rs is null");
	else{
		while(rs.next()){
			out.println(rs.getRow() + " : " + rs.getString(1) + ": : :" + rs.getString(2) + "<br>");
		
		}
	}
	conDB.closeDB();
%>

</body>
</html>