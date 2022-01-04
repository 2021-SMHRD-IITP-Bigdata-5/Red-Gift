package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import org.apache.catalina.User;

import vo.MyPageVO;
import vo.NutriClassesVO;
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
//			System.out.println("클래스파일로딩완료");
			
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "cgi_7_4_1216";
			String db_pw = "smhrd4";
			conn= DriverManager.getConnection(url, db_id, db_pw);
			if(conn!=null) {
//				System.out.println("db연결 성공");
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
			String sql="insert into tbl_users("
					+ "user_id,"
					+ "user_pw,"
					+ "user_nickname,"
					+ "user_name,"
					+ "user_birth,"
					+ "user_sex,"
					+ "user_phone"
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
				System.out.println("가입성공");				
			}
			else {
				System.out.println("가입실패");
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return nick;
	}
	//---------------------------------------------------------------
	//	 
	//	2 PW 
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
				String getadminyn=rs.getString(9); 
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
		System.out.println("dao진입성공");
		try {
			String sql="update tbl_users set user_pw=?, user_nickname=?,user_name=?,user_birth=?,user_sex=?,user_phone=? where user_id=?";
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, user.getUser_pw());
				psmt.setString(2, user.getUser_nick());
				psmt.setString(3, user.getUser_name());
				psmt.setString(4, user.getUser_birth());
				psmt.setString(5, user.getUser_sex());
				psmt.setString(6, user.getUser_phone());
				psmt.setString(7, user.getUser_id());	
			cnt=psmt.executeUpdate();
			
			if(cnt>0) {
				System.out.println("UserDAO Update 회원정보수정성공");
			}else {
				System.out.println("UserDAO Update 회원정보수정실패");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
		
	}
	//---------------------------------------------------------------
	public int Delete(String id) {
		connect();
		try {
			String sql="Delete from tbl_users where user_id=?";
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
	
	//이하 전부 MYPAGE DAO 로 수정 통합됨 삭제
	//---------------------------------------------------------------
//	public ArrayList<NutriClassesVO> getNutriClasses(String choice) {
//		NutriClassesVO nutriClass = new NutriClassesVO();
//		ArrayList<NutriClassesVO> arr = new ArrayList<>();
//		
//		connect();
//		try {		
//			String sql="select * from TBL_NUTRI_CLASSES where CHOICE=? order by RANK";
//				psmt=conn.prepareStatement(sql);
//				psmt.setString(1,choice);
//			rs =psmt.executeQuery();
//		while(rs.next()) {
//					nutriClass.setNclass(rs.getNString(1));
//					nutriClass.setSat(rs.getInt(2));
//					nutriClass.setPos(rs.getInt(3));
//					nutriClass.setNeg(rs.getInt(4));
//					nutriClass.setPhoto(rs.getString(5));
//					nutriClass.setChoice(rs.getString(6));
//					nutriClass.setRank(rs.getInt(7));
//				
//				arr.add(nutriClass);
//			}
//		
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			close();
//		}
//		return arr;
//	}
	//---------------------------------------------------------------
//	public ArrayList<MyPageVO> getMypage(String id) {
//		connect();
//		MyPageVO mpvo =new MyPageVO();
//		ArrayList<MyPageVO> arr = new ArrayList<>();
//		try {
//			String sql="select * from TBL_MYPAGES where USER_ID=?";
//				psmt=conn.prepareStatement(sql);
//				psmt.setString(1, id);
//			rs =psmt.executeQuery();
//			
//			while(rs.next()) {
//				mpvo.setPage_seq(rs.getInt(1));
//				mpvo.setNutri_seq(rs.getInt(2));
//				mpvo.setNutri_class(rs.getNString(3));
//				mpvo.setMy_class_sat(rs.getNString(4));
//				mpvo.setReg_date(rs.getNString(5));
//				mpvo.setUser_id(rs.getNString(6));
//				mpvo.setPage_memo(rs.getNString(7));
//				arr.add(mpvo);
//			}
//	
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			close();
//		}
//		
//		return arr;
//	}
	//---------------------------------------------------------------

//	public void getMyclass(String choice) {
//		connect();
//		try {
//			String sql="select * from TBL_NUTRI_CLASSES where CHOICE=? "
//					+ "order by RANK";
//				psmt=conn.prepareStatement(sql);
//				psmt.setNString(1, choice);
//			rs =psmt.executeQuery();
//				
//			rs.next();
//			String class1=rs.getString(1);
//			String class2=rs.getString(2);
//			String class3=rs.getString(3);
//		}catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			close();
//		}
//
//	}

	//---------------------------------------------------------------

//	public void insertMyPage() {
//		connect();
//		
//		try {
//			String sql="insert into TBL_MYPAGES("
//					+ "nutri_seq,"
//					+ "nutri_class,"
//					+ "my_class_sat,"
//					+ "user_id"
//					+ ") values("
//					+ "?,"
//					+ "?,"
//					+ "?,"
//					+ "?"
//					+ ")";
//				psmt=conn.prepareStatement(sql);
//				psmt.setString(1,);
//				psmt.setString(2,);
//				psmt.setString(3,);
//				psmt.setString(4,);
//			cnt=psmt.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			close();
//		}
//		
		
		
		
//		
//	}
	

}
