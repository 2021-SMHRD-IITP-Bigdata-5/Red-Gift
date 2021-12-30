package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.UserDAO;
import inter.command;

public class MypageService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("");
		
		UserDAO dao = new UserDAO();

		Gson gson = new Gson();
		String json = gson.toJson(dao.getMypage(id));
	
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(json);
		
		return "myPage.jsp";
	}

}
