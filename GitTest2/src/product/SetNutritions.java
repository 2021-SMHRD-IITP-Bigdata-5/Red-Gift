package product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MypageDAO;
import dao.NutritionsDAO;
import inter.command;
import vo.NutritionsVO;


@WebServlet("/Nutritions")
public class SetNutritions extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		int nutri_seq = Integer.parseInt(request.getParameter("nutri_seq"));
		String nutri_name = request.getParameter("nutri_name");
		int nutri_sat = Integer.parseInt(request.getParameter("nutri_sat"));
		int nutri_pos = Integer.parseInt(request.getParameter("nutri_pos"));
		int nutri_neg= Integer.parseInt(request.getParameter("nutri_neg"));
		String nutri_class = request.getParameter("nutri_class");
		String reg_date = request.getParameter("reg_date");
		
		NutritionsDAO dao = new NutritionsDAO();
		NutritionsVO ncv = new NutritionsVO(nutri_seq, nutri_name, nutri_sat, nutri_pos, nutri_neg, nutri_class, reg_date);

		int cnt= dao.SetNutritions(ncv);
		if(cnt>0) {
			System.out.println("데이터 추가 성공");
		}else {
			System.out.println("실패");
		}
		
		return null;
	}

}
