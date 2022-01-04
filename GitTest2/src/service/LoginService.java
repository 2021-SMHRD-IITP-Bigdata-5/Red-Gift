package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import inter.command;
import vo.UserVO;

public class LoginService implements command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		UserDAO dao = new UserDAO();
	
		String nextpage=null;
		UserVO uservo = dao.login(id, pw);
		System.out.println(uservo.getUser_id());
		if(uservo!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("uservo", uservo);
			nextpage="main.jsp";
		}
		
		
		return nextpage;
	}

}
