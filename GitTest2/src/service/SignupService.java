package service;

import java.io.IOException;
import java.io.PrintWriter;

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
		String pw= request.getParameter("pw");
		String pw2= request.getParameter("pw2");
		String nick= request.getParameter("nickname");
		String name= request.getParameter("name");
		String birth= request.getParameter("birth");
		String sex= request.getParameter("gender");
		String phone= request.getParameter("phone");
		response.setContentType("text/html; charset=UTF-8");
	
		System.out.println("회원서블릿성공");
	
		PrintWriter out = response.getWriter();
		if(pw.equals(pw2)) {
			UserVO uservo = new UserVO(id, pw, nick, name, birth, sex, phone);
			UserDAO dao = new UserDAO();
			dao.signUp(uservo);
			
			
			if (dao.signUp(uservo)>0) {
				
				System.out.println("회원가입성공");
				
			}
			else {
				System.out.println("회원가입실패");
			}
			
			out.print("<script>");
			out.print("alert('회원가입 성공');");
			out.print("location.href='main.jsp';");
			out.print("</script>");
			
		}else {
			out.print("<script>");
			out.print("alert('비밀번호가 다릅니다');");
			out.print("location.href='signUp.jsp';");
			out.print("</script>");
		}
		
	
		return null;
	}

}
