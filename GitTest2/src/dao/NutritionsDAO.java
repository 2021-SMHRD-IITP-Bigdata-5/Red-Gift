package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import vo.NutriIngreVo;
import vo.NutritionsVO;

public class NutritionsDAO {

	Connect con = new Connect();
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt=0;
	ArrayList<NutritionsVO> nutri_list = new ArrayList<NutritionsVO>();
	ArrayList<NutriIngreVo> ingre_list = new ArrayList<NutriIngreVo>();
	
	
	
	public int SetNutritions(NutritionsVO ncv) {
		con.connect();
		try {
			String sql ="insert into TBL_NUTRITIONS values(?,?,?,?,?,?,?)";
			psmt=con.conn.prepareStatement(sql);
			psmt.setInt(1, ncv.getNutri_seq());
			psmt.setString(2, ncv.getNutri_name());
			psmt.setInt(3, ncv.getNutri_sat());
			psmt.setInt(4, ncv.getNutri_pos());
			psmt.setInt(5, ncv.getNutri_neg());
			psmt.setString(6, ncv.getNutri_class());
			psmt.setString(7, ncv.getReg_date());
			cnt=psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			con.close(con.conn, psmt, rs);
		}
		return cnt;
	}
	
	public int SetIngredients(NutriIngreVo niv) {

		con.connect();
		
		try {
			String sql="insert into TBL_NUTRI_INGREDIENTS values(?,?,?,?,?)";
			psmt=con.conn.prepareStatement(sql);
			psmt.setInt(1, niv.getIngre_seq());
			psmt.setInt(2, niv.getNutri_seq());
			psmt.setString(3, niv.getIngre_name());
			psmt.setString(4,niv.getIngre_effect());
			psmt.setString(5,niv.getExpired_date());
			
			cnt=psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			con.close(con.conn, psmt, rs);
		}
		
		
		
		return cnt;
		
	}
	
	public ArrayList<NutriIngreVo> GetIngredients(int ingre_seq){
		con.connect();
		try {
			String sql="Select * from TBL_NUTRI_INGREDIENTS where ingre_seq=?";
			psmt=con.conn.prepareStatement(sql);
			psmt.setInt(1, ingre_seq);
			rs=psmt.executeQuery();
			while(rs.next()) {
				int db_ingre_seq = rs.getInt(1);
				int nutri_seq = rs.getInt(2);
				String ingre_name=rs.getString(3);
				String ingre_effect=rs.getString(4);
				String expired_date = rs.getString(5);
				NutriIngreVo ncv = new NutriIngreVo(db_ingre_seq, nutri_seq, ingre_name, ingre_effect, expired_date);
				ingre_list.add(ncv);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			con.close(con.conn, psmt, rs);
		}
		
		
		
		return ingre_list;
	}
	
	public ArrayList<NutritionsVO> GetNutritions(int nutri_seq) {
		con.connect();
		
		
		
		return nutri_list;
		
	}
	
}
