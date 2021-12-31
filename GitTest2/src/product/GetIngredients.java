package product;

import inter.command;
import vo.NutriIngreVo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NutritionsDAO;


@WebServlet("/GetIngredients")
public class GetIngredients extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;

    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
    	
    	HttpSession session = request.getSession();
    	NutriIngreVo niv= (NutriIngreVo) request.getAttribute("nutri_ingredients");
    	
    	int ingre_seq = Integer.parseInt(request.getParameter(String.valueOf(niv.getIngre_seq())));
    	
    	NutritionsDAO dao = new NutritionsDAO();
    	dao.GetIngredients(ingre_seq);
    	
    	
    	
    	return null;
    }


}
