package page;

import inter.command;
import vo.NutriClassesVO;
import vo.NutriVO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.MypageDAO;


@WebServlet("/GetNutriClass")
public class GetNutriClass extends HttpServlet implements command {

	
    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
    	HttpSession session = request.getSession();
    	String choice = request.getParameter("choice");
    	System.out.println("----GetNutriClass getParam choice: "+choice);
    	
    	MypageDAO dao = new MypageDAO();
		ArrayList<NutriVO> arr = new ArrayList<NutriVO>();
		
		arr=dao.GetNutri(choice);  //MyPageDAO
		
		
		System.out.println("----GetNutriClass arr size: "+arr.size());
		session.setAttribute("nutriarr",arr);
  
		
		Gson gson = new Gson();
		String json = gson.toJson(arr);
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		
				
		out.print(json);
    	return null;
    }

}
