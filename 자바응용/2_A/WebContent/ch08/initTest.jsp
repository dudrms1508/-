<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
// Connection : 연결된 데이터 베이스에 대한 정보를 저장하는 객체
	Statement stmt = null;
// Statement : sql 문을 전송하고 실행하기 위한 객체
	String sql = null;

	try{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
	    // SQL 서버
	    out.println("드라이버 로딩 성공");
	    
	    String connectionUrl = "jdbc:sqlserver://localhost:1433; DataBaseName=2-A; user=sa; password=system;";
	    conn = DriverManager.getConnection(connectionUrl);
	    out.println("연결 성공");
	    
	    stmt = conn.createStatement();
	    sql = "create table MyHello(username VARCHAR(12), email VARCHAR(50))";
	    
	    //stmt.executeUpdate(sql);
	    out.println("MyHello 테이블 생성 OK!!");
	    
	    int i = 1;
	    
	    while(i<10){
	    	sql = "Insert into MyHello(username, email) values('hoho" + i + "', 'hoho" + i + "@bc.ac.kr')";
	    			i ++;
	    	stmt.executeUpdate(sql);
	    }
	    
	    sql = "select username, email from MyHello";
	    boolean isResult = stmt.execute(sql);
	    if(isResult){
	    	ResultSet rs = stmt.getResultSet();
	    	while(rs.next()){
	    		out.println(rs.getRow() + " : " + rs.getString(1) + ": : : " + rs.getString(2) + "<br>");
	    	}
	    }
	    
	    
	    /*
	    boolean 과 같다 이말이야
	    ResultSet rs = stmt.executeQuery(sql);
	    
	    while(rs.next()){
	    	
	    	out.println(rs.getRow() + " : " + rs.getString(1) + ": : : " + rs.getString(2) + "<br>");
	    	//out.println(rs.getRow() + " : " + rs.getString("username") + " ; ; ; " + rs.getString("email") + "<br>");
	    }
	    */
	    
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