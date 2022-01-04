package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.MypageDAO;
import dao.UserDAO;
import inter.command;
import vo.UserVO;

public class MypageService implements command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		UserVO uservo = (UserVO)session.getAttribute("uservo");
		String id = uservo.getUser_id();
		System.out.println("MypageService id: "+id);
//		String id = request.getParameter("");
//		
		//UserDAO dao = new UserDAO();
		
		MypageDAO dao = new MypageDAO();
		Gson gson = new Gson();
		String json = gson.toJson(dao.GetMypage(id));
	
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		


		
		return "myPage.jsp";
	}

}
