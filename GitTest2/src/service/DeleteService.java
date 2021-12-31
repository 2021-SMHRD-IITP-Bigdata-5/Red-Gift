package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import inter.command;
import vo.UserVO;

@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;



	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

	
	String id = request.getParameter("id");
	
		
		UserDAO dao = new UserDAO();
		
		
		String nextpage="";
		int cnt = dao.Delete(id);
		
		if(cnt >0) {
			
			nextpage="main.jsp";
		}else {
			
		}
		
		return nextpage;
	}

}
