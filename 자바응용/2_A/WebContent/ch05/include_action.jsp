<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05 : include action �׽�Ʈ</title>
</head>
<body>
<H2>include_actiong.jsp ���� footer.jsp ȣ��</H2>
<HR>
include_action.jsp ���� ����� �޽��� �Դϴ�.<BR>

<jsp:forward page="footer.jsp">
 <!--<jsp:include page="footer.jsp"> -->
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="000-000-0000" />
</jsp:forward>
����� footer.jsp�� ���Ե� ���� �����̴�.
</body>
</html>