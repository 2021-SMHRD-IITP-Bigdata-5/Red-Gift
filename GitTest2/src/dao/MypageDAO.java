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
import vo.NutriVO;


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
	//----------------------------------------------------------------
	
	/*
	쿼리수정 TBL_NUTRI_CLASSES -> TBL_NUTRI
	 */
	
	public ArrayList<NutriVO> GetNutri(String choice) {  //통합   사용setMypage/result1/result2/
		con.connect();
		
		ArrayList<NutriVO> arr = new ArrayList<NutriVO>();
		
		try {
			
			String nutri="";
			String[] list1= {"0","MOM","FATHER","GRANDMA","MARRYED","JUNIOR","SENIOR","PREGD","STUDENT"};
			int a=Integer.parseInt(choice);
				for( int i=1; i<9;i++ ) {
					if(i==a) nutri=list1[i];
				}
			System.out.println("MypageDAO GetNutri : nutriType from choice :"+nutri);
			
			
			
//			String sql="SELECT A.CHOICE, "
//					+ "B.N_"+nutri+", "
//				    + "B.N_NAME, "
//				    + "B.N_POS, "
//				    + "B.N_PHOTO, "
//				    + "B.N_CLOUD, "
//				    + "B.N_GRAPH "
//				    + "FROM TBL_NUTRI B "
//				    + "INNER JOIN (SELECT * FROM TBL_NUTRI_CHOICES WHERE CHOICE = ?) A "
//				    + "ON B.N_NAME IN (A.CLASS1, A.CLASS2, A.CLASS3) "
//				    + "ORDER BY B.N_"+nutri+" ASC";
//	1:1매칭으로 수정
			String sql="SELECT "+nutri+", N_NAME, N_POS, N_PHOTO, N_CLOUD, N_GRAPH FROM "
					+ "(SELECT * FROM TBL_NUTRI ORDER BY "+nutri+" DESC) WHERE ROWNUM<=3";
			
			System.out.println(sql);
				psmt=con.conn.prepareStatement(sql);
				//psmt.setString(1, nutri);
				//psmt.setString(2, nutri);
			rs =psmt.executeQuery();
			
			while(rs.next()) {
				String choice_name = rs.getNString(1);
				String nutri_name = rs.getString(2);
				float nutri_pos = Float.parseFloat(rs.getString(3));
				String nutri_photo = rs.getString(4);
				String nutri_cloud = rs.getString(5);
				String nutri_graph = rs.getString(6);
				NutriVO nv = new NutriVO( choice_name, nutri_name, nutri_pos, nutri_photo, nutri_cloud, nutri_graph);
				arr.add(nv);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			con.close(con.conn, psmt, rs);
		}

		return arr;
	
	}
	
	// ---------------------------------------------------------------
	public int SetMypage(String id, String choice) {
		connect();
		ArrayList<NutriVO> arr=GetNutri(choice);

		try {
			String sql="insert into TBL_MYPAGES ("
					+ "nutri_class, "
					+ "my_class_sat, "
					+ "user_id, "
					+ "nutri_seq)"
					+ "values(?,?,?,?)";
				psmt=conn.prepareStatement(sql);
				
				psmt.setNString(1,arr.get(0).getNutri_name());
				psmt.setFloat(2,arr.get(0).getNutri_pos());
				psmt.setNString(3,id);
				psmt.setNString(4,arr.get(0).getNutri_photo());
			cnt=psmt.executeUpdate();
			
			
			if(cnt>0) System.out.println("MypageDAO SetMypage insert success id:"+id);
			
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
				String ntr_photo = rs.getString(2);
				String ntr_class = rs.getString(3);
				String class_sat = rs.getString(4);
				String reg_date = rs.getString(5);
				String user_id = rs.getString(6);
				String page_memo = rs.getString(7);
				if(page_memo==null) page_memo="메모가 없습니다";

				mypagevo = new MyPageVO(page_seq, ntr_photo, ntr_class, class_sat, reg_date, user_id, page_memo);
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
//	public ArrayList<NutriClassesVO> GetNutri(String choice) {  //통합   사용setMypage/result1/result2/
//		con.connect();
//		try {
//			String sql  ="SELECT "
//						+ "A.CHOICE, "
//						+ "B.NUTRI_CLASS, "
//						+ "B.class_sat, "
//						+ "B.class_pos, "
//						+ "B.class_neg, "
//						+ "B.class_photo" + 
//						"FROM TBL_NUTRI_CLASSES B" + 
//						"INNER JOIN (SELECT * FROM TBL_NUTRI_CHOICES WHERE CHOICE = ?) A" + 
//						"ON B.NUTRI_CLASS IN (A.CLASS1, A.CLASS2, A.CLASS3)";
//				psmt=con.conn.prepareStatement(sql);
//				psmt.setString(1, choice);
//			rs =psmt.executeQuery();
//			
//			while(rs.next()) {
//				String choicename = rs.getString(1);
//				String nutri_class = rs.getString(2);
//				int class_sat = rs.getInt(3);
//				int class_pog = rs.getInt(4);
//				int class_neg = rs.getInt(5);
//				String class_photo = rs.getString(5);
//				
//				NutriClassesVO ncv = new NutriClassesVO(choicename, nutri_class, class_sat, class_pog, class_neg, class_photo);
//			
//				class_list.add(ncv);
//			}
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
