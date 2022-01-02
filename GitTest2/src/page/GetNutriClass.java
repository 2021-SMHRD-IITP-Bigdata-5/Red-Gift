package page;

import inter.command;
import vo.NutriClassesVO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MypageDAO;


@WebServlet("/GetNutriClass")
public class GetNutriClass extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;

    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
    	HttpSession session = request.getSession();
    	NutriClassesVO ncv = (NutriClassesVO) session.getAttribute("nutri_class");
    	
    	String nclass = request.getParameter(ncv.getNclass());
    	
    	MypageDAO dao = new MypageDAO();
    	dao.GetNutriClasses(nclass);
    	
    	
    	
    	
    	
    	
    	return null;
    }

}
