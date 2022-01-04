package service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import inter.command;
import vo.CommunityVO;

public class GetArticle implements command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		int no=1;
		no = Integer.parseInt(request.getParameter("articleNo"));
		
		BoardDAO dao = new BoardDAO();	
		request.setAttribute("article", dao.getArticle(no));
		RequestDispatcher disp = request.getRequestDispatcher("articleRead.jsp");
		disp.forward(request, response);
		
		
		
		return null;
	}

}
