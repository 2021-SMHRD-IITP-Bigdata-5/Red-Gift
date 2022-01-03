package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.CommunityVO;
import vo.UserVO;

public class BoardDAO {
	
	UserVO uservo = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	int cnt=0;
	boolean check =false;
	String result = null;

	ArrayList<UserVO> userlist = new ArrayList<UserVO>();
//--------------------------------------------------------------------------------	
	
	public void connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
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
			if(rs != null)rs.close();
			if(psmt!=null)psmt.close();
			if(conn!=null)conn.close();	
		} catch (Exception e) {
		}
	}
//--------------------------------------------------------------------------------	
	
	
	public int insertArticle(CommunityVO vo) {
		connect();
		
		try {
			String sql="insert into TBL_COMMUNITY("
					+ "article_subject,"
					+ "article_content,"
					+ "user_id,"
					+ "article_file1,"
					+ "article_file2,"
					+ "article_file3,"
					+ ") values(?, ?, ?, ?, ?, ?)";
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, vo.getArticle_subject());
				psmt.setString(2, vo.getArticle_content());
				psmt.setString(3, vo.getUser_id());
				psmt.setString(4, vo.getArticle_file1());
				psmt.setString(5, vo.getArticle_file2());
				psmt.setString(6, vo.getArticle_file3());
			cnt=psmt.executeUpdate();
			
			if(cnt>0) {
				System.out.println("글입력성공");				
			}
			else {
				System.out.println("글입력실패");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close();
			
		}
		
		
		return cnt;
		
	}
//--------------------------------------------------------------------------------	
	public ArrayList<CommunityVO> articleList(int topRow, int bottomRow ){
		
		connect();
		
		ArrayList<CommunityVO> arr = new ArrayList<>();
		
		try { 
			String sql = "select * "
						+ "from (select * from TBL_COMMUNITY order by ARTICLE_SEQ desc ) "
						+ "where rownum between ? and ?";
				psmt=conn.prepareStatement(sql);
				psmt.setInt(1, topRow);
				psmt.setInt(2, bottomRow);
			rs =psmt.executeQuery();

			while(rs.next()) {
				int article_seq=rs.getInt(1);
				String article_subject=rs.getNString(2);
//				String article_content=rs.getNString(3);
				String reg_date=rs.getNString(4);
				String user_id=rs.getNString(5);
//				String Article_file1=rs.getNString(6);
//				String Article_file2=rs.getNString(7);
//				String Article_file3=rs.getNString(8);
				CommunityVO vo = new CommunityVO(article_seq,article_subject,reg_date,user_id);
				arr.add(vo);
			}
		} catch (Exception e){
			
			
		} finally {
			
			close();
			
		}
		return arr;
	}
//--------------------------------------------------------------------------------	
	public int getTotalCount() {
		connect();
		int count=0;
		try { 
			String sql = "select count(*) total FROM TBL_COMMUNITY";
				psmt=conn.prepareStatement(sql);
			rs =psmt.executeQuery();
			
			while(rs.next()) {
				count=rs.getInt("total");
				System.out.println(count);
			}
		} catch (Exception e){
			
		} finally {
			
			close();
			
		}	
		return count;
	}
//--------------------------------------------------------------------------------	
	
	
	
	
	
	
	
	
}
