<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	Statement stmt = null;
	String sql=null;
	
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	try{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
	    String connectionUrl = "jdbc:sqlserver://localhost:1433; DataBaseName=2-A; user=sa; password=system;";
	    conn = DriverManager.getConnection(connectionUrl);
	    stmt = conn.createStatement();
	    
	    sql = "Select pwd from MemberInfo where id = '" + id + "' ";
	    out.println(sql);
	    
	    ResultSet rs = stmt.executeQuery(sql);
	   	if( !rs.next()){
	   		sql = "insert into MemberInfo(id, pwd) values(' "+ id + "', ' " + pwd+ "')";
	   		out.println(sql);
	   		stmt.executeUpdate(sql);
	   		out.println(id + "/" + pwd + "추가 !");
	   	}else{
	   		out.println(id + "/" + rs.getString(1) + "존재");
	   	}
	}catch(Exception e){
			out.println("연결 실패");
			e.printStackTrace();
		}finally {
			if(stmt != null)
			stmt.close();
			if(conn != null)
			conn.close();
		}
	
	
	
%>
</body>
</html>