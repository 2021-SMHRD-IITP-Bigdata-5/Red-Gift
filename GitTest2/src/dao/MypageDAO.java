package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.MyPageVO;
import vo.NutriChoicesVo;
import vo.NutriClassesVo;
import vo.NutritionsVO;
import vo.UserVO;

public class MypageDAO {
	
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	MyPageVO mypagevo;
	
	ArrayList<MyPageVO> list = new ArrayList<MyPageVO>();
	int cnt=0;
	boolean check =false;
	String result = null;
	
	Connect con = new Connect();
	
	
	
	//---------------------------------------------------------------
	
	public int SetNutriChoice(NutriChoicesVo ncv) {
		con.connect();
		try {
			String sql="insert into TBL_NUTRI_CHOICES("
					+ "choice,"
					+ "NUTRI_CLASS1,"
					+ "NUTRI_CLASS2,"
					+ "NUTRI_CLASS3)"
					+ "values(?,?,?,?)";
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, ncv.getChoise());
			psmt.setString(2, ncv.getNutri_class1());
			psmt.setString(3, ncv.getNutri_class2());
			psmt.setString(4, ncv.getNutri_class3());
			
			cnt=psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			con.close(conn, psmt, rs);
		}
		
		
		
		return cnt;
	}
	
	public int SetNutriClass(NutriClassesVo ncv) {
		con.connect();
		try {
			String sql = "insert into TBL_NUTRI_CLASSES values(?,?,?,?)";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, ncv.getNclass());
			psmt.setInt(2, ncv.getSat());
			psmt.setInt(3, ncv.getPos());
			psmt.setInt(4, ncv.getNeg());
			
			cnt=psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public ArrayList<MyPageVO> GetMypage(String id){
		con.connect();
		
		try {
			String sql="select * from TBL_MYPAGES where id =?";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int page_seq=Integer.parseInt(rs.getString(1)) ;
				int nutri_seq=Integer.parseInt(rs.getString(2));
				String ntr_class=rs.getString(3);
				String class_sat=rs.getString(4);
				String reg_date=rs.getString(5);
				String user_id=rs.getString(6);
				String page_memo=rs.getString(7);
				
				mypagevo = new MyPageVO(page_seq, nutri_seq, ntr_class, class_sat, reg_date, user_id, page_memo);
			}
		list.add(mypagevo);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			con.close(conn, psmt, rs);
		}
		
		return list;
		
	}
	
	
	
}
