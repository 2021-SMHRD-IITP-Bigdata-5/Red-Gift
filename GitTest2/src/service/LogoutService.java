package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inter.command;


@WebServlet("/LogoutService")
public class LogoutService extends HttpServlet implements command{
	private static final long serialVersionUID = 1L;



	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		session.removeAttribute("uservo");
		
		return "main.jsp";
	}

}
