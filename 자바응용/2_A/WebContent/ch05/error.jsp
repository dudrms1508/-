<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05 : 에러페이지</title>
</head>
<body>
<center>
<H2>처리중 문제가 발생했습니다.</H2>
<HR>
<table>
<tr bgcolor="pink"><td>
관리자에게 문의해주세요.<BR>
빠른시일내 복구하겠습니다.
<HR>
<%= exception%>
<%-- exception 내장 객체 jsp에서 기본적으로 제공 --%>

<HR>

</td>
</tr>
</table></center>
</body>
</html>