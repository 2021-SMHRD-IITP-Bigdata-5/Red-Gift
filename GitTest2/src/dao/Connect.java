package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Connect {
	
	
	public void connect() {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
//			System.out.println("Ŭ�������Ϸε��Ϸ�");
			
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "cgi_7_4_1216";
			String db_pw = "smhrd4";
			conn= DriverManager.getConnection(url, db_id, db_pw);
			if(conn!=null) {
//				System.out.println("db���� ����");
			}else {
				System.out.println("db���� ����");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("Ŭ�������� �ε�����");
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		
	}
	public void close(Connection conn, PreparedStatement psmt, ResultSet rs) {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt!=null) {
				psmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
