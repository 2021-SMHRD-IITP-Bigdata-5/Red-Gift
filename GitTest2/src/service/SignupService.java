package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import inter.command;
import vo.UserVO;

@WebServlet("/SignupService")
public class SignupService extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;



	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		
		String id= request.getParameter("id");
		String pw=request.getParameter("pw");
		String nick=request.getParameter("nickname");
		String name=request.getParameter("name");
		String birth=request.getParameter("brith");
		String gender= request.getParameter("gender");
		String phone =request.getParameter("phone");
		
		UserVO uservo = new UserVO(id, pw, nick, name, birth, gender, phone);
		UserDAO dao = new UserDAO();
		dao.signup(uservo);
		
		String nextpage="";
		
		if (dao.signup(uservo)>0) {
			nextpage = "main.jsp";
		}
		else {
			
		}
		
		
		return nextpage;
	}

}
