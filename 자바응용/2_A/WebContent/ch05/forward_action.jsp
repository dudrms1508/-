<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05 : forward action 테스트</title>
</head>
<body>
<h2>forward_action.jsp 에서 footer.jsp 호출</h2>
<HR>
forward_action.jsp 의 모든 내용은 출력되지 않습니다.
<jsp:forward page="footer.jsp">
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="000-000-0000" />
	</jsp:forward>
	요기요 출력 될까요?
</body>
</html>