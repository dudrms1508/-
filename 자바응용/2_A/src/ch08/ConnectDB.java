package ch08;
import java.sql.*;

public class ConnectDB { //DAO타입 Data Access Object
	private Connection conn=null;
	private Statement stmt=null;
	private String sql = null;
	private ResultSet rs = null;
	private String username;
	private String email;
	
	
	public ConnectDB() {
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
		    String connectionUrl = "jdbc:sqlserver://localhost:1433; DataBaseName=2-A; user=sa; password=system;";
		    conn = DriverManager.getConnection(connectionUrl);
		    stmt = conn.createStatement();
		}catch(Exception e){
			e.printStackTrace();		
		} 
	}
	public void closeDB()throws Exception{
		if(stmt != null)
			stmt.close();
		if(conn != null)
			conn.close();
	}
	
	private void getResultSet()throws Exception{
		String sql;
		sql = "insert into MyHello(username, email) values('" + username + "', '" + email + "')";
		stmt.executeUpdate(sql);
		sql = "select username, email from MyHello";
		rs = stmt.executeQuery(sql); 
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public ResultSet getRs() throws Exception{
		getResultSet();
		return rs;
	}
	
	
}
