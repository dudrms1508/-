<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"
	uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch11 : remove</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:Remove&gt;</h3>
<c:set value="dinfree" var="msg" />
msg : ${msg} <br>
<c:remove var="msg"/>
after Remove : ${msg}

</body>
</html>