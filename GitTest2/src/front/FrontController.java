package front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inter.command;
import service.LoginService;
import service.LogoutService;
import service.SignupService;
import service.UpdateService;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		String path = request.getContextPath();
		System.out.println(path);
		String commend = uri.substring(path.length()+1);
		System.out.println(commend);
		
		command com = null;
		String nextpage= null;
	
		if(commend.equals("SignupCon.do")) {
			com= new SignupService();
			nextpage=com.execute(request, response);
		}
		
		if(commend.equals("LoginCon.do")) {
		com = new LoginService();
		nextpage = com.execute(request, response);
			
		}
		
		if(commend.equals("LogoutCon.do")) {
			com = new LogoutService();
			nextpage = com.execute(request, response);
		}
	
		if(commend.equals("UpdateCon.do")) {
			com= new UpdateService();
			nextpage=com.execute(request, response);
		}
	}

}
