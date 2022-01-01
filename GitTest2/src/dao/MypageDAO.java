package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.ChoiceVO;
import vo.MyPageVO;
import vo.NutriClassesVO;


public class MypageDAO {

	Connection conn=null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	MyPageVO mypagevo;
	ArrayList<MyPageVO> page_list;

	ArrayList<NutriClassesVO> class_list = new ArrayList<NutriClassesVO>();
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
	public ArrayList<NutriClassesVO> GetNutri(String choice) {  //통합   사용setMypage/result1/result2/
		con.connect();
		try {
			String sql  ="SELECT "
						+ "A.CHOICE, "
						+ "B.NUTRI_CLASS, "
						+ "B.class_sat, "
						+ "B.class_pos, "
						+ "B.class_neg, "
						+ "B.class_photo" + 
						"FROM TBL_NUTRI_CLASSES B" + 
						"INNER JOIN (SELECT * FROM TBL_NUTRI_CHOICES WHERE CHOICE = ?) A" + 
						"ON B.NUTRI_CLASS IN (A.CLASS1, A.CLASS2, A.CLASS3)";
				psmt=con.conn.prepareStatement(sql);
				psmt.setString(1, choice);
			rs =psmt.executeQuery();
			
			while(rs.next()) {
				String choicename = rs.getString(1);
				String nutri_class = rs.getString(2);
				int class_sat = rs.getInt(3);
				int class_pog = rs.getInt(4);
				int class_neg = rs.getInt(5);
				String class_photo = rs.getString(5);
				
				NutriClassesVO ncv = new NutriClassesVO(choicename, nutri_class, class_sat, class_pog, class_neg, class_photo);
			
				class_list.add(ncv);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			con.close(con.conn, psmt, rs);
		}

		return class_list;
	}
	// ---------------------------------------------------------------
	public int SetMypage(String id, String choice) {
		connect();
		ArrayList<NutriClassesVO> arr=GetNutri(choice);

		try {
			String sql="insert into TBL_MYPAGES ("
					+ "nutri_class,"
					+ "my_class_sat,"
					+ "user_id"
					+ "values(?,?,?)";
				psmt=conn.prepareStatement(sql);
				
				psmt.setNString(1,arr.get(1).getNclass());
				psmt.setInt(2,arr.get(1).getSat());
				psmt.setNString(3,id);		
			cnt=psmt.executeUpdate();
			
			con.check(cnt);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return cnt;
		
	}
	// ---------------------------------------------------------------
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
				if(page_memo==null) page_memo="메모가 없습니다";

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
	// ---------------------------------------------------------------
	public int DeleteMypage(int page_seq) {
		connect();
		try {
			String sql="Delete from tbl_mypages where page_seq = ?";
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, page_seq);
			cnt=psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	
		return cnt;
		
	}
	// ---------------------------------------------------------------
	public int UpdateMypage(int page_seq,String page_memo) {
		connect();
		try {
			String sql="Update tbl_mypages set page_memo=? where page_seq=?";
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, page_memo);
				psmt.setInt(2, page_seq);
			cnt=psmt.executeUpdate();
			
			if(cnt>0) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
	}
	// ---------------------------------------------------------------

	public int SetNutriClass(NutriClassesVO ncv) {
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
	// ---------------------------------------------------------------
	
	
	
	
	
	// ---------------------------------------------------------------
//	public ChoiceVO selectClasses(String choice) {
//		con.connect();
//		ChoiceVO selected = new ChoiceVO();
//		try {
//			String sql="Select * from TBL_NUTRI_CHOICES where CHOICE=?";
//				psmt=con.conn.prepareStatement(sql);
//				psmt.setString(1, choice);
//			rs =psmt.executeQuery();
//			
//			rs.next();
//			String class1 = rs.getString(2);
//			String class2 = rs.getString(3);
//			String class3 = rs.getString(4);
//			selected= new ChoiceVO(class1,class2,class3);
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			con.close(con.conn, psmt, rs);
//		}
//
//		return selected;
//	}
	// ---------------------------------------------------------------
//	public ArrayList<NutriClassesVO> GetNutriClasses(String nclass) {
//		con.connect();
//		try {
//			
//			String sql="Select * from TBL_NUTRI_CLASSES where nutri_class=?";
//			psmt=con.conn.prepareStatement(sql);
//			psmt.setString(1, nclass);
//			rs=psmt.executeQuery();
//			while(rs.next()) {
//				String db_nclass = rs.getString(1);
//				int class_sat = rs.getInt(2);
//				int class_pog = rs.getInt(3);
//				int class_neg = rs.getInt(4);
//				String class_photo = rs.getString(5);
//				
//				NutriClassesVO ncv = new NutriClassesVO(db_nclass, class_sat, class_pog, class_neg, class_photo);
//			
//				class_list.add(ncv);
//			}
//			
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			con.close(con.conn, psmt, rs);
//		}
//
//		return class_list;
//	}

	// ---------------------------------------------------------------
	

	
}//클래스끝
