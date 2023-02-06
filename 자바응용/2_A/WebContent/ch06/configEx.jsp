<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration e = config.getInitParameterNames();
	while(e.hasMoreElements()){
		String init_paramName =
					(String)e.nextElement();
%>

초기 파라미터 이름 : <%=init_paramName %><br />
초기 피라미터 값 :
<%=config.getInitParameter(init_paramName) %>
<br />
<%
}
%> <!--  while 문의 끝 --> 

	<%!String adminId;
	String adminPw;
	%>
	
	<%
		adminId = config.getInitParameter("adminId");
		adminPw = getServletConfig().getInitParameter("adminPw");//
		%>
		
		<p>adminId : <%=adminId %> </p>
		<p>adminPw : <%=adminPw %>	</p>
</body>
</html>