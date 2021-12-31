package page;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MypageDAO;
import inter.command;
import vo.UserVO;


@WebServlet("/GetRecommend")
public class GetMypage extends HttpServlet implements command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession session = request.getSession();
		UserVO uservo = (UserVO)session.getAttribute("uservo");
		
		String id = uservo.getUser_id();
		
		MypageDAO dao = new MypageDAO();
		
		session.setAttribute("pageList",dao.GetMypage(id));
		
		return "myPage.jsp";
	}







}
