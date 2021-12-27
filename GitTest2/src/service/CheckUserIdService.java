package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import inter.command;

public class CheckUserIdService implements command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("inputEmail");
		UserDAO dao = new UserDAO();
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();	
		out.print(dao.CheckUserId(id));
		System.out.println(dao.CheckUserId(id));
		return null;
	}

}
