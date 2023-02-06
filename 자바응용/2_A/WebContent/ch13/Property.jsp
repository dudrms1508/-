<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch14:property.jsp</title>
</head>
<body>
<div align="center">
<h2>ch14:property.jsp</h2>
<hr>
ServletContext 설정값 출력<hr>
name1 : <%= getServletConfig().getInitParameter("name1") %><br>
name2 : <%= getInitParameter("name2") %><br>
name3 : <%= getServletContext().getInitParameter("name3") %><br>
workspace : <%= getServletContext().getInitParameter("workspace") %>
</div>

</body>
</html>