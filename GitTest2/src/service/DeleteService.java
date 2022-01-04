package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import inter.command;

public class DeleteService implements command{

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
