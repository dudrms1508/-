<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
    
 <% request.setCharacterEncoding("UTF-8");	 %>
 
 <%
 	Connection conn = null;
 	PreparedStatement pstmt = null;
 	
 	try{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
	    String connectionUrl = "jdbc:sqlserver://localhost:1433; DataBaseName=2-A; user=sa; password=system;";
	    conn = DriverManager.getConnection(connectionUrl);
	    
	    String sql = "insert into MyHello values(?,?)";
	    pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1,request.getParameter("username"));
	    pstmt.setString(2,request.getParameter("email"));
	    // username 값을 입력한 경우 sql 문장을 수행
	    
	    if(request.getParameter("username") != null){
	    	pstmt.executeUpdate();
	    }
	    
 	} catch(Exception e){
		out.println("연결 실패");
		e.printStackTrace();
 	}
 	
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>이벤트 등록</h2>
<hr>
<form name=form1 method=post action=jdbctest_pstmt.jsp>
등록 이름 : <input type=text name=username>
email 주소 : <input type=text name=email size=20>
<input type=submit value="등록">
</form>
<hr>
</center>
# 등록 목록<p>
<%
	try{
		//select 문장을 문자열 형태로 구성한다.
		String sql = "select username, email from MyHello";
		pstmt = conn.prepareStatement(sql);
		
		//select 를 수행하면 데이터 정보가 ResultSet 클래스의 인스턴스로 저장
		ResultSet rs = pstmt.executeQuery();
		int i= 1;
		//마지막 데이터 까지 반복함.
		while(rs.next()){
			out.println(i+" : "+ rs.getString(1) + " ," +rs.getString("email")+"<BR>");
			i++;
		}
		//사용자 자원의 반납
		rs.close();
		pstmt.close();
		conn.close();
	}
	catch(Exception e){
		System.out.println(e);
	}
%>



</body>
</html>