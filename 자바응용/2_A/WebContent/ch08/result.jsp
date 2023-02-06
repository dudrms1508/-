<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" import="ch08.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="conDB" class="ch08.ConnectDB" scope="request" />
<%
// ConnectDB conDB = (ConnectDB)request.getAttribute("conDB");
	ResultSet rs = (ResultSet)conDB.getRs();
	out.println("<hr><br> Result.jsp에서 출력 <br><hr>");
	
	if(rs == null)
		out.println("rs is null");
	else{
		while(rs.next()){
			out.println(rs.getRow() + " : " + rs.getString(1)  + ": : :" + rs.getString(2) + "<br>");
		}
	}
	conDB.closeDB();
%>

</body>
</html>