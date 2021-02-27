package sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MyConnection {
	private static Connection con;
	public static Connection getConnection() throws SQLException {
		if(con == null) {
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "youngyoung";
			String password = "kty990122";
			con = DriverManager.getConnection(url,user, password);
		}
		return con;
	}
	
	
	public static void close(Connection con , Statement stmt, ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void close(Connection con , Statement stmt) {
		if(stmt != null) {
			try {
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public static void close(Connection con) {
		if(con != null) {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	
}
