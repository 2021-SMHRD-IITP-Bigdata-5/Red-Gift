package product;

import inter.command;
import vo.NutritionsVO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NutritionsDAO;


@WebServlet("/GetNutritions")
public class GetNutritions extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
    	HttpSession session = request.getSession();
    	NutritionsVO nv = (NutritionsVO) session.getAttribute("nutritions");
    	
    	int nutri_seq = Integer.parseInt(request.getParameter(String.valueOf(nv.getNutri_seq())));
    	NutritionsDAO dao = new NutritionsDAO();
    	
    	
    	
			return null;
    }

}
