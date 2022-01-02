package page;

import inter.command;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MypageDAO;


@WebServlet("/DeleteMypage")
public class DeleteMypage extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
		request.setCharacterEncoding("UTF-8");
		int page_seq = Integer.parseInt(request.getParameter("page_seq"));
		System.out.println("testGetPage"+page_seq);
		
    	MypageDAO dao = new MypageDAO();
    	int cnt=dao.DeleteMypage(page_seq);
    	String nextpage=null;
    	
    	return nextpage;
    }

}
