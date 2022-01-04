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

	@SuppressWarnings("unused")
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
		
		HttpSession session = request.getSession();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(uservo!=null) {
			session.setAttribute("uservo", uservo);
			out.print("<script>");
			out.print("alert('로그인성공');");
			out.print("location.href='main.jsp';");
			out.print("</script>");
		}else {
			out.print("<script>");
			out.print("alert('로그인실패');");
			out.print("location.href='login.jsp';");
			out.print("</script>");
		}
			nextpage="main.jsp";

		
		
		return nextpage;
	}

}
