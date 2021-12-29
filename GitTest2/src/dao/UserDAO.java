package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.catalina.User;

import vo.NutriChoicesVo;
import vo.NutriClassesVo;
import vo.UserVO;

public class UserDAO {
	UserVO uservo = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	ArrayList<UserVO> userlist = new ArrayList<UserVO>();
	int cnt=0;
	boolean check =false;
	String result = null;
	
	//---------------------------------------------------------------
	public void connect() {
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
	//---------------------------------------------------------------
	public boolean CheckUserId(String id) {
		connect();
		
		try {
			String sql="select * from TBL_USERS where USER_ID=?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			
			if(rs.next()) {
				check=false;
			}else {
				check=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return check;
	}
	//---------------------------------------------------------------
	public int signUp(UserVO user) {
		connect();
		
		try {
			String sql="insert into TBL_USERS("
					+ "USER_ID,"
					+ "USER_PW,"
					+ "USER_NICKNAME,"
					+ "USER_NAME,"
					+ "USER_BIRTH,"
					+ "USER_SEX,"
					+ "USER_PHONE"
					+ ") values(?, ?, ?, ?, ?, ?, ?)";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, user.getUser_id());
			psmt.setString(2, user.getUser_pw());
			psmt.setString(3, user.getUser_nick());
			psmt.setString(4, user.getUser_name());
			psmt.setString(5, user.getUser_birth());
			psmt.setString(6, user.getUser_sex());
			psmt.setString(7, user.getUser_phone());
			cnt=psmt.executeUpdate();
			
			if(user.getUser_nick()==null) {
				String nickName=nickNameGen(user.getUser_id());
				user.setUser_nick(nickName);
			}
			
			if(cnt>0) {
				System.out.println("���Լ���");				
			}
			else {
				System.out.println("���Խ���");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
		
	}	
	//---------------------------------------------------------------
	public String nickNameGen(String userid) {
		connect();
		String nick=null;
		try {
		String sql="select * from TBL_USERS_NICKNAMEGEN where USER_ID is null";
			psmt=conn.prepareStatement(sql);
		rs= psmt.executeQuery();
		rs.next();
		nick = rs.getNString(2);
		
		sql="update TBL_USERS set USER_NICKNAME	=? where USER_ID=?";
			psmt=conn.prepareStatement(sql);
			psmt.setNString(1, nick);
			psmt.setNString(2, userid);
		rs= psmt.executeQuery();
		
		sql="update TBL_USERS_NICKNAMEGEN set USER_ID=? where GEN_NICKNAME=?";
			psmt=conn.prepareStatement(sql);
			psmt.setNString(1, userid);
			psmt.setNString(2, nick);
		rs= psmt.executeQuery();
		
		
			if(cnt>0) {
				System.out.println("���Լ���");				
			}
			else {
				System.out.println("���Խ���");
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return nick;
	}
	//---------------------------------------------------------------
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
				String getphone=rs.getString(7);
				String getjoin_date=rs.getString(8); 
				String getadminyn=rs.getString(8); 
				uservo = new UserVO(getid, getnick, getname, getbrith, getsex, getphone, getjoin_date, getadminyn);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return uservo;
	}	
	//---------------------------------------------------------------
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
	
	//---------------------------------------------------------------
	public ArrayList<NutriClassesVo> nutriChoice(String choice) {
		NutriClassesVo nutriClass = new NutriClassesVo();
		ArrayList<NutriClassesVo> arr = new ArrayList<>();
		
		connect();
		try {
			String sql="select * from TBL_NUTRI_CHOICES where CHOICE=?";
				psmt=conn.prepareStatement(sql);
				psmt.setString(1,choice);
			rs =psmt.executeQuery();
		rs.next();
		String classA=rs.getNString(2);
		String classB=rs.getNString(3);
		String classC=rs.getNString(4);
		
		
			sql="select * from TBL_NUTRI_CLASSES where NUTRI_CLASS=? or NUTRI_CLASS=? or NUTRI_CLASS=?";
				psmt=conn.prepareStatement(sql);
				psmt.setString(1,classA);
				psmt.setString(2,classB);
				psmt.setString(3,classC);
			rs =psmt.executeQuery();
		while(rs.next()) {
			nutriClass.setNclass(rs.getNString(1));
			nutriClass.setSat(Integer.parseInt(rs.getNString(1)));
			nutriClass.setPos(Integer.parseInt(rs.getNString(2)));
			nutriClass.setNeg(Integer.parseInt(rs.getNString(3)));
			arr.add(nutriClass);
		}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return arr;
	}
	//---------------------------------------------------------------

	public int Delete(String id) {
		connect();
		try {
			String sql="Delete from tbl_user where id=?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			cnt=psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
		
	}

	//---------------------------------------------------------------
//	public void insertMyPage() {
//		connect();
//		
//		try {
//			String sql="insert into TBL_MYPAGES("
//					+ ""
//					+ ""
//					+ ""
//					+ ""
//					+ ") values()";
//				psmt=conn.prepareStatement(sql);
//				psmt.setString(1,);
//
//			cnt=psmt.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			close();
//		}
		
		
		
		
//		
//	}
	

}
