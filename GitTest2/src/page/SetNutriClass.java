package page;

import inter.command;
import vo.NutriClassesVo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MypageDAO;


@WebServlet("/SetNutriClass")
public class SetNutriClass extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
    	String nutri_class = request.getParameter("nutri_class");
    	int nutri_sat = Integer.parseInt(request.getParameter("nutri_sat"));
    	int nutri_pos = Integer.parseInt(request.getParameter("nutri_pos"));
    	int nutri_neg = Integer.parseInt(request.getParameter("nutri_neg"));
    	String class_photo = request.getParameter("class_photo");
    	String choice = (request.getParameter("choice"));
    	int rank = Integer.parseInt(request.getParameter("rank"));
    	
    	
    	MypageDAO dao = new MypageDAO();
    	NutriClassesVo ncv = new NutriClassesVo(nutri_class, nutri_sat, nutri_pos, nutri_neg, class_photo, choice, rank);
    	
    	int cnt=0;
    	cnt=dao.SetNutriClass(ncv);
    	
    	if(cnt>0) {
    		System.out.println("데이터 추가 성공");
    	}else {
    		System.out.println("실패");
    	}
    	
    	
    	
    	return null;
    }

}
