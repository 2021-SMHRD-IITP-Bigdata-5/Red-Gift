package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.NutriChoicesVo;
import vo.NutriIngreVo;
import vo.NutritionsVO;

public class NutritionsDAO {

	Connect con = new Connect();
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt=0;
	
	
	
	public int SetNutritions(NutritionsVO ncv) {
		con.connect();
		try {
			String sql ="insert into TBL_NUTRITIONS values(?,?,?,?,?,?,?)";
			psmt=conn.prepareStatement(sql);
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
			con.close(conn, psmt, rs);
		}
		return cnt;
	}
	
	public int SetIngredients(NutriIngreVo niv) {
		con.connect();
		
		try {
			String sql="insert into TBL_NUTRI_INGREDIENTS values(?,?,?,?,?)";
			psmt=conn.prepareStatement(sql);
			psmt.setInt(1, niv.getIngre_seq());
			psmt.setInt(2, niv.getNutri_seq());
			psmt.setString(3, niv.getIngre_name());
			psmt.setString(4,niv.getIngre_effect());
			psmt.setString(5,niv.getExpired_date());
			
			cnt=psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			con.close(conn, psmt, rs);
		}
		
		
		
		return cnt;
		
	}
}
