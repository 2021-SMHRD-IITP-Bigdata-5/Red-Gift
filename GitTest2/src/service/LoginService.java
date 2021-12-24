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

@WebServlet("/LoginService")
public class LoginService extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		UserDAO dao = new UserDAO();
		dao.login(id, pw);
		HttpSession session = request.getSession();
		session.setAttribute("uservo", dao.login(id, pw));
		
		
		return "main.jsp";
	}

}
