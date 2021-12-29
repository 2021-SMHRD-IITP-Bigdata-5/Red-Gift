package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import inter.command;

@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;



	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String id = request.getParameter("delete_id");
		
		UserDAO dao = new UserDAO();
		
		
		String nextpage="";
		dao.Delete(id);
		
		if(dao.Delete(id)>0) {
			nextpage="main.jsp";
		}
		
		return nextpage;
	}

}
