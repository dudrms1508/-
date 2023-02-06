<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<!--  body-content :  10장 - 19page -->

<%@ attribute name="bgcolor"  %>
<%@ attribute name="border" required ="true" %>
<!-- 속성 뒤에 required="true"  를 사용하여 필수사항이라 지정 -->



<jsp:useBean id="product" class="ch10.Product"/>
<h2><jsp:doBody/></h2>

<%-- <jsp:doBody/> : 바디 내용을 처리하기 위함
없애면 body 내용이 처리가 x --%>

<table border="${border}"	 bgcolor="${bgcolor}"  width="150">
<%
	for(String item : product.getProductlist()) {
		out.println("<tr><td>" + item + "</td></tr>");
	}
%>
</table>

