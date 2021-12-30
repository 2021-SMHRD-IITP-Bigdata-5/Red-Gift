package product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NutritionsDAO;
import inter.command;
import vo.NutriIngreVo;


@WebServlet("/SetIngredients")
public class SetIngredients extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		int ingre_seq = Integer.parseInt(request.getParameter("ingre_seq"));
		int nutri_seq = Integer.parseInt(request.getParameter("nutri_seq"));
		String ingre_name =request.getParameter("ingre_name");
		String ingre_effect = request.getParameter("ingre_effect");
		String nutri_expired_date = request.getParameter("nutri_expired_date");
		
		NutritionsDAO dao=new NutritionsDAO();
		NutriIngreVo niv = new NutriIngreVo(ingre_seq, nutri_seq, ingre_name, ingre_effect,nutri_expired_date);

		int cnt=0;
		cnt =dao.SetIngredients(niv);
		
		if(cnt>0) {
			System.out.println("데이터 추가 성공");
		}else {
			System.out.println("실패");
		}
		
		
		return null;
	}

}
