<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	pageContext.setAttribute("p","pageContext 메시지");
	request.setAttribute("r", "request 메시지");
	
	pageContext.forward("pageEnd.jsp");
	// RequestDispatcher rd =
	//					request.get.RequestDispatcher("pageEnd.jsp");
	// rd.forward(request.response);
	
%>
</body>

</body>
</html>