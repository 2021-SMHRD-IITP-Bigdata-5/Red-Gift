package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.catalina.User;

import vo.UserVO;

public class UserDAO {
	UserVO uservo = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	ArrayList<UserVO> userlist = new ArrayList<UserVO>();
	int cnt=0;
	boolean check =false;
	
	
	public void connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("클래스파일로딩완료");
			
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "cgi_7_4_1216";
			String db_pw = "smhrd4";
			conn= DriverManager.getConnection(url, db_id, db_pw);
			if(conn!=null) {
				System.out.println("db연결 성공");
			}else {
				System.out.println("db연결 실패");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		
	}
	public void close() {
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
	public UserVO login(String id, String pw) {
		connect();
		
		
		try {
			String sql="select * from tbl_users where user_id=?";
			   psmt=conn.prepareStatement(sql);
			   psmt.setString(1, id);
			rs=psmt.executeQuery();
			
			if(rs.next()&&pw.equals(rs.getString(2))) {
				String getid=rs.getString(1); 
				String getnick=rs.getString(3); 
				String getname=rs.getString(4); 
				String getbrith=rs.getString(5); 
				String getsex=rs.getString(6); 
				String getxphone=rs.getString(7);
				String getjoin_date=rs.getString(8); 
				String getadminyn=rs.getString(8); 
				uservo = new UserVO(getid, getnick, getname, getbrith, getsex, getxphone, getjoin_date, getadminyn);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return uservo;
	}

	public int signup(UserVO user) {
		connect();
		
		try {
			
			String sql="select * from tbl_user_nicknamegen where user_id = null";
				psmt=conn.prepareStatement(sql);
			String nickName = rs.getNString(2);
			
			sql="insert to into tbl_users values(?,?,?,?,?,?,?,?,?)";
			
				psmt=conn.prepareStatement(sql);
			
				psmt.setString(1, user.getUser_id());
				psmt.setString(2, user.getUser_pw());
			if(user.getUser_nick()==null) {
				psmt.setNString(3, nickName);
			}else {
				psmt.setString(3, user.getUser_nick());
			};
				psmt.setString(4, user.getUser_name());
				psmt.setString(5, user.getUser_birth());
				psmt.setString(6, user.getUser_sex());
				psmt.setString(7, user.getUser_phone());
			
			cnt=psmt.executeUpdate();
			
			if(cnt>0) {
				System.out.println("가입성공");				
			}
			else {
				System.out.println("가입실패");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return cnt;
		
	}
	
	public int Update(UserVO user) {
		connect();
		
		try {
			String sql="update tbl_users set user_pw=?, "
					+ "user_nickname=?"
					+ "user_name=?, "
					+ "user_birth=?,"
					+ "user_sex=?,"
					+ "user_phone=? "
					+ "where user_id=?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, user.getUser_pw());
			psmt.setString(2, user.getUser_nick());
			psmt.setString(3, user.getUser_name());
			psmt.setString(4, user.getUser_birth());
			psmt.setString(5, user.getUser_sex());
			psmt.setString(6, user.getUser_phone());
			psmt.setString(7, user.getUser_id());
			
			cnt=psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
		
	}

}
