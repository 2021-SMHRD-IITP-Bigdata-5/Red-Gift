package front;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import inter.command;
import page.DeleteMypage;
import page.GetMypage;
import page.GetNutriClass;
import page.SetMypage;
import page.SetNutriClass;
import product.GetIngredients;
import product.GetNutritions;
import product.SetIngredients;
import product.SetNutritions;
import service.CheckUserIdService;
import service.DeleteService;
import service.LoginService;
import service.LogoutService;
import service.MypageService;
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
	
		if(command.equals("Signup.do")) {
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

		if(command.equals("Mypage.do")) {
			com= new MypageService();
			com.execute(request, response);
		}
		
		if(command.equals("Delete.do")) {
			com=new DeleteService();
			nextpage=com.execute(request, response);
		}
		
//------------------------마이페이지프론트--------------------------
		
		if(command.equals("GetMypage.do")) {
			com=new GetMypage();
			
		}
		if(command.equals("SetMypage.do")) {
			com=new SetMypage();
		}
		
		if(command.equals("SetNutriClass.do")) {
			com= new SetNutriClass();
		}
		if(command.equals("GetNutriClass.do")) {
			com= new GetNutriClass();
		}
		if(command.equals("DeleteMypage.do")) {
			//int page_seq = Integer.parseInt(request.getParameter("page_seq"));
			com=new DeleteMypage();
			nextpage=com.execute(request, response);
		}
		if(command.equals("UpdateMypage.do")) {
			
		}
		
//------------------------영양제 프론트------------------------------		
		if(command.equals("SetNutritions.do")) {
			com= new SetNutritions();	
		}
		if(command.equals("GetNutritions.do")) {
			com = new GetNutritions();
		}
		if(command.equals("SetIngredients.do")) {
			com = new SetIngredients();
		}
		if(command.equals("GetIngredients.do")) {
			com = new GetIngredients();
		}
		
		
		
		if(nextpage!=null) response.sendRedirect(nextpage);

	
	}//서비스끝
}//컨트롤러끝

