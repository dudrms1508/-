<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<H2>ch10:EL 예제 - 상품목록</H2><HR>
<form name=form1 method=POST action=ProductSel.jsp>
	<jsp:useBean id="product" class="ch10.Product" scope="session"/>
	<!--	[scope="session"] 브라우저 하나가 실행하는 모든 페이지에서 공용으로 사용 -->
	<select name="sel">
	<%
		for(String item : product.getProductlist()){
			//
			out.println("<option>" + item + "</option>");
		}
	%></select>
	<input type="submit" value="선택"/>
	
</form> 
</div>

</body>
</html>