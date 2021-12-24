package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import inter.command;
import vo.UserVO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		UserVO uservo = (UserVO)session.getAttribute("uservo");
		
		String id = request.getParameter(uservo.getUser_id());
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String name= request.getParameter("name");
		String birth = request.getParameter("birth");
		String gender= request.getParameter("gender");
		String phone = request.getParameter("phone");
		String nextpage="";
		
		UserVO upuservo = new UserVO(id, pw, nick, name, birth, gender, phone);
		UserDAO dao = new UserDAO();
		int cnt=dao.Update(upuservo);
		
		if(cnt>0) {
		UserVO new_uservo= new UserVO(id, nick, name, birth, gender, phone);
		session.setAttribute("uservo", new_uservo);
		nextpage="main.jsp";
		
		}
		
		
		
		return nextpage;
	}

}
