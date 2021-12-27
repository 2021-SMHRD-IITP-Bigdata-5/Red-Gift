package front;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import inter.command;
import service.CheckUserIdService;
import service.LoginService;
import service.LogoutService;
import service.SignupService;
import service.UpdateService;


@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		String path = request.getContextPath();
		System.out.println(path);
		String command = uri.substring(path.length()+1);
		System.out.println(command);
		
		command com = null;
		String nextpage= null;
	
		if(command.equals("SignUp.do")) {
			com= new SignupService();
			nextpage=com.execute(request, response);
		}
		if(command.equals("CheckUserId.do")) {
			com = new CheckUserIdService();
			com.execute(request, response);
			
		}
		if(command.equals("LogIn.do")) {
			com = new LoginService();
			com.execute(request, response);
		}
		if(command.equals("LogInGnb.do")) {
			com = new LoginService();
			nextpage=com.execute(request, response);
		}
		
		if(command.equals("LogOut.do")) {
			com = new LogoutService();
			nextpage = com.execute(request, response);
		}
	
		if(command.equals("Update.do")) {
			com= new UpdateService();
			nextpage=com.execute(request, response);
		}
		
		
		if(nextpage!=null) response.sendRedirect(nextpage);
	}

}
