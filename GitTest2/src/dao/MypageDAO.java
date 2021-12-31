package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.MyPageVO;
import vo.NutriClassesVo;


public class MypageDAO {

	Connection conn=null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	MyPageVO mypagevo;
	ArrayList<MyPageVO> page_list;

	ArrayList<NutriClassesVo> class_list = new ArrayList<NutriClassesVo>();
	int cnt = 0;
	boolean check = false;
	String result = null;

	Connect con = new Connect();
	
	public void connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
//			System.out.println("클래스파일로딩완료");
			
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
	// ---------------------------------------------------------------

	public int SetMypage(MyPageVO mpv) {
		
		connect();
		try {
			String sql="insert into TBL_MYPAGES values(?,?,?,?,?,?,?)";
				psmt=conn.prepareStatement(sql);
				psmt.setInt(1, mpv.getPage_seq());
				psmt.setInt(2, mpv.getNutri_seq());
				psmt.setString(3,mpv.getNutri_class());
				psmt.setString(4,mpv.getMy_class_sat());
				psmt.setNString(5, mpv.getReg_date());
				psmt.setNString(6, mpv.getUser_id());
				psmt.setNString(7, mpv.getPage_memo());		
			cnt=psmt.executeUpdate();
			
			con.check(cnt);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cnt;
		
	}

	
	
	public ArrayList<MyPageVO> GetMypage(String id) {
		
		connect();
		
		page_list = new ArrayList<MyPageVO>();

		try {
			String sql = "select * from TBL_MYPAGES where user_id =?";
				psmt =conn.prepareStatement(sql);
				psmt.setString(1, id);
			rs =psmt.executeQuery();
			
			System.out.println("id는 : " + id);

			while (rs.next()) {
				int page_seq = Integer.parseInt(rs.getString(1));
				int nutri_seq = Integer.parseInt(rs.getString(2));
				String ntr_class = rs.getString(3);
				String class_sat = rs.getString(4);
				String reg_date = rs.getString(5);
				String user_id = rs.getString(6);
				String page_memo = rs.getString(7);

				mypagevo = new MyPageVO(page_seq, nutri_seq, ntr_class, class_sat, reg_date, user_id, page_memo);
				page_list.add(mypagevo);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return page_list;

	}

	public int SetNutriClass(NutriClassesVo ncv) {
		con.connect();
		try {
			String sql = "insert into TBL_NUTRI_CLASSES values(?,?,?,?)";
			psmt = con.conn.prepareStatement(sql);
			psmt.setString(1, ncv.getNclass());
			psmt.setInt(2, ncv.getSat());
			psmt.setInt(3, ncv.getPos());
			psmt.setInt(4, ncv.getNeg());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	

	public ArrayList<NutriClassesVo> GetNutriClasses(String nclass) {
		con.connect();
		try {
			String sql="Select * from TBL_NUTRI_CLASSES where nutri_class=?";
			psmt=con.conn.prepareStatement(sql);
			psmt.setString(1, nclass);
			rs=psmt.executeQuery();
			while(rs.next()) {
				String db_nclass = rs.getString(1);
				int class_sat = rs.getInt(2);
				int class_pog = rs.getInt(3);
				int class_neg = rs.getInt(4);
				String class_photo = rs.getString(5);
				String choice = rs.getString(6);
				int rank = rs.getInt(7);
				
				NutriClassesVo ncv = new NutriClassesVo(db_nclass, class_sat, class_pog, class_neg, class_photo, choice, rank);
			
				class_list.add(ncv);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			con.close(con.conn, psmt, rs);
		}

		return class_list;
	}

}
