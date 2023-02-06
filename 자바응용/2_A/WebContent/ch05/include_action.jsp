<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05 : include action 테스트</title>
</head>
<body>
<H2>include_actiong.jsp 에서 footer.jsp 호출</H2>
<HR>
include_action.jsp 에서 출력한 메시지 입니다.<BR>

<jsp:forward page="footer.jsp">
 <!--<jsp:include page="footer.jsp"> -->
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="000-000-0000" />
</jsp:forward>
여기는 footer.jsp가 포함된 다음 문장이다.
</body>
</html>