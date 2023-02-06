<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07_login_reuslt</title>
</head>
<body>

<jsp:useBean id="login" class="ch07.LoginBean" scope="request" />
<!-- login 에서 scope를 통해 참조를 달리 했으면 다른 페이지 에서도 scope 변수를
변경해야함. 
 -->
사용자 아이디 : <jsp:getProperty name="login" property="userid" /><br>
사용자 패스워드 : <jsp:getProperty name="login" property="passwd" />


</body>
</html>