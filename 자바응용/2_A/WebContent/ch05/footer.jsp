<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05 : footer.jsp</title>
</head>
<body>
footer.jsp 에서 출력한 메시지 입니다.
<HR>
<%= request.getParameter("email") %>,
<%= request.getParameter("tel") %>

</body>
</html>