package page;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MypageDAO;
import inter.command;
import vo.NutriVO;
import vo.UserVO;

public class SetMypage implements command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		UserVO uservo = (UserVO)session.getAttribute("uservo");
		String id = uservo.getUser_id();
		String choice = request.getParameter("choice");
		
		System.out.println("SetMypage서비스 도착:"+id);
		System.out.println("SetMypage서비스 도착:"+choice);
		
//		팀회의로 choice 확정되면 활성화		
		MypageDAO dao = new MypageDAO();
		ArrayList<NutriVO> arr = new ArrayList<NutriVO>();
		arr=dao.GetNutri(choice);
		session.setAttribute("nutriarr",arr);
		
		int cnt=dao.SetMypage(id, choice);
		if(cnt>0) {
			System.out.println("SetMypage:recorded!");
		}
		return null;
	}

}
