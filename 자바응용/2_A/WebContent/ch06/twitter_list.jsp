<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    
<!DOCTYPE html>

<%
	// 한글 캐릭터셋 변환
	request.setCharacterEncoding("UTF-8");
	//HTML 폼에서 username으로 전달된 값을 가지고 옴
	String username = request.getParameter("username");
	
	if(username != null){
		// null 이 아닌경우에는 세션에값을 저장.
		session.setAttribute("user", username);
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>ch06 : twitter_list.jsp</title>
</head>
<body>
	<div align="center">
	<h3>My Simple Twitter</h3>
	<HR>
	<form action="tweet.jsp" method="POST">
		<!-- 세션에 저장된 이름 출력 -->
		@<%=session.getAttribute("user") %>
			<input type="text" name="msg">
			<input type="submit" value="tweet">
			</form>
	<HR>
	<div align="left">
	<UL>
	<%
		// application 내장 객체를 통해 msgs 이름으로 저장된 ArrayList를 가지고옴
		ArrayList<String>msgs=
			(ArrayList<String>)application.getAttribute("msgs");
			// msgs가 null 이 아닌 경우에만 목록 출력
			if(msgs != null){
				for(String msg : msgs) {
					out.println("<LI>"+msg+"</LI>");
				}
			}
			%>

	</UL>
	</div>
	</div>

</body>
</html>