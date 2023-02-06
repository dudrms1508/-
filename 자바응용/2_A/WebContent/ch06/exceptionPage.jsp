<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true"
    pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String message = exception.getMessage();
String objMessage = exception.toString();
%>
에러메세지 : <%= message %><br/>
에러 클래스명과 메세지 : <%= objMessage %>

</body>
</html>