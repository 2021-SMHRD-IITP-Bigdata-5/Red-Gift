package page;

import inter.command;
import vo.NutriClassesVO;
import vo.NutriVO;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MypageDAO;


@WebServlet("/GetNutriClass")
public class GetNutriClass extends HttpServlet implements command {

	
    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
    	HttpSession session = request.getSession();
    	String choice = request.getParameter("choice");
    	MypageDAO dao = new MypageDAO();
		ArrayList<NutriVO> arr = new ArrayList<NutriVO>();
		arr=dao.GetNutri(choice);
		System.out.println(arr.size());
		session.setAttribute("nutriarr",arr);
  
    	return null;
    }

}
