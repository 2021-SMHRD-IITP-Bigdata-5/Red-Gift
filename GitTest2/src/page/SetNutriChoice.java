package page;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MypageDAO;
import inter.command;
import vo.NutriChoicesVo;


@WebServlet("/SetRecommend")
public class SetNutriChoice extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		int choice= Integer.parseInt(request.getParameter("choice")); 
		String class1 = request.getParameter("class1");
		String class2 = request.getParameter("class2");
		String class3 = request.getParameter("class3");
		
		MypageDAO dao = new MypageDAO();
		NutriChoicesVo ncv = new NutriChoicesVo(choice, class1, class2, class3);
		int cnt =dao.SetNutriChoice(ncv);
		
		if(cnt>0) {
			System.out.println("데이터 추가 완료");
		}else {
			System.out.println("실패");
		}
		
		
		
		return null;
		
	}

}
