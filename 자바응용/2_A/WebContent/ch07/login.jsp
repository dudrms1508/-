<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07 : login.jsp</title>
</head>
<body>
<div align=center>
<H2>로그인 예제</H2>
<hr>
	<jsp:useBean id="login" class="ch07.LoginBean" scope = "request" />
  	<!-- scope = "page" 라고 설정하여 해당 페이지에서만 참조함 -->
  	<!--
  	<jsp:setProperty name="login" property="userid" />
  	<jsp:setProperty name="login" property="passwd" /> 
  	-->
  	
  	<jsp:setProperty name="login" property="*" />
  	<!--  위 방법과 같음 ^^. -->
  	
  	<jsp:forward page="login_result.jsp"></jsp:forward>
	
	<hr>
	사용자 아이디:<jsp:getProperty name="login" property="userid" /><BR>
	사용자 패스워드:<jsp:getProperty name="login" property="passwd"/>
	
	
	
</div>



</body>
</html>