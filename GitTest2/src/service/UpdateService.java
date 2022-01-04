package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import inter.command;
import vo.UserVO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		UserVO uservo = (UserVO)session.getAttribute("uservo");
		System.out.println(uservo);
		String id = uservo.getUser_id();
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		String nick = request.getParameter("nick");
		String name= request.getParameter("name");
		String birth = request.getParameter("birth");
		String gender= request.getParameter("gender");
		String phone = request.getParameter("phone");
		String nextpage="";
		System.out.println("업데이트서블릿진입");
		System.out.println(id);
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		if(pw.equals(pw2)) {
			
		
		UserVO upuservo = new UserVO(id, pw, nick, name, birth, gender, phone);
		UserDAO dao = new UserDAO();
		int cnt=dao.Update(upuservo);
		
	
		if(cnt>0) {
			System.out.println("업데이트성공");
		UserVO new_uservo= new UserVO(id, nick, name, birth, gender, phone);
		session.setAttribute("uservo", new_uservo);
		nextpage="main.jsp";
		
		}
		
		
		out.print("<script>");
		out.print("alert('업데이트성공');");
		out.print("location.href='main.jsp';");
		out.print("</script>");
		}
		else {
			out.print("<script>");
			out.print("alert('비밀번호가 다릅니다.');");
			out.print("location.href='updateUser.jsp';");
			out.print("</script>");
		}
		return null;
	}

}
