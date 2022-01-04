package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.MypageDAO;
import inter.command;
import vo.NutriVO;

public class GetNutriService implements command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
    	String choice = request.getParameter("choice");
    	System.out.println("----GetNutriClass getParam choice: "+choice);
    	
    	MypageDAO dao = new MypageDAO();
		ArrayList<NutriVO> arr = new ArrayList<NutriVO>();
		
		arr=dao.GetNutri(choice);  //MyPageDAO
		
		
		System.out.println("GetNutriService arr size 3check: "+arr.size());
		HttpSession session = request.getSession();
		session.setAttribute("nutriarr",arr);
  
		
		Gson gson = new Gson();
		String json = gson.toJson(arr);
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		
				
		out.print(json);
	
		
		return null;
	}

}
