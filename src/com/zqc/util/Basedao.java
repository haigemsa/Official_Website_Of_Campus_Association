package com.zqc.util;
import java.sql.*;
public class Basedao {
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url =  "jdbc:mysql://localhost:3306/registration_system?db_cjky?useUnicode=true&characterEncoding=utf8";
	private static String username ="root";
	private static String password ="980211";
	private static Connection conn=null;
	public static Connection getConnection() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
			return conn;
		       }
	
	public static void release(ResultSet rs,PreparedStatement prst,Connection conn) {
		closeRs(rs);
		closeSt(prst);
		closeConn(conn);
		
	}

	public static void closeRs(ResultSet rs) {
		//释放资源
		try {
			if( rs!= null ) {
				rs.close();
			}
			   
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			 rs = null;
		}
	}
	public static void closeSt(Statement st) {
		//释放资源
		try {
			if( st!= null ) {
				st.close();
			}
			   
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			 st = null;
		}
	}

	public static void closeConn(Connection conn) {
		//释放资源
		try {
			if( conn!= null ) {
				conn.close();
			}
			   
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			 conn = null;
			}
		}
	}
	
	
	



