<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05 : forward action �׽�Ʈ</title>
</head>
<body>
<h2>forward_action.jsp ���� footer.jsp ȣ��</h2>
<HR>
forward_action.jsp �� ��� ������ ��µ��� �ʽ��ϴ�.
<jsp:forward page="footer.jsp">
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="000-000-0000" />
	</jsp:forward>
	���� ��� �ɱ��?
</body>
</html>