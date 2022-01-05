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
	
		UserVO uservo = dao.login(id, pw);
		String nextpage=null;
		
		
		
		HttpSession session = request.getSession();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(uservo!=null) {
			String nick=null;
			nick=uservo.getUser_nick();
			session.setAttribute("uservo", uservo);
			//out.print("<script>");
			//out.print("alert('�α��μ���');");
			//out.print("location.href='main.jsp';");
			//out.print("</script>");
			out.print(nick);
			nextpage="main.jsp";
		}else {
			out.print("<script>");
			out.print("alert('�α��ν���');");
			out.print("location.href='login.jsp';");
			out.print("</script>");
		}

		
		
		return nextpage;
	}

}
