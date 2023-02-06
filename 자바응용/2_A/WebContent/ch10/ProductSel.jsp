<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch10: EL 예제</title>
</head>
<body>
<%
request.setAttribute("scope","리케스트 영역의 자료");

%>
<div align="center">
<h2>ch10: EL 예제 - 상품선택 </h2>
<hr>
1. request 객체 : <%=request.getParameter("sel") %> <br>
2. 선택한 상품은 : ${request.sel} <BR>
3. 선택한 상품은 : ${param.sel} <br>
4.requestScope 객체 활용 : ${requestScope.scope}<br>
5.request 객체활용  : ${request.scope}<br>
6. num1 + num2 = ${product.num1 + product.num2 } <br>


<!-- 추출하려면 이것을 써야함 리케스트 사용방법 파람은 
반드시 클라이언트 객체를 사용함  -->

</div>

</body>
</html>