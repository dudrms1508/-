<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String imgDir;
	String testServerIP;
	String realServerIP;
	%>
	
	<%
		imgDir = application.getInitParameter("imgDir");
		testServerIP = application.getInitParameter("testServerIP");
		realServerIP = getServletContext().getInitParameter("realServerIP");
		%>
		
		<p>imgDir : <%=imgDir%></p>
		<p>testServerIP : <%=testServerIP%></p>
		<p>realServerIP : <%=realServerIP%></p>

</body>
</html>