package page;

import inter.command;
import vo.MyPageVO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MypageDAO;


@WebServlet("/UpdateMypage")
public class UpdateMypage extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
    	int page_seq = Integer.parseInt(request.getParameter("page_seq"));
    	String page_memo = request.getParameter("page_memo");
    	
    	MypageDAO dao = new MypageDAO();
    	int cnt=dao.UpdateMypage(page_seq, page_memo);
    	String nextpage="";
    	if(cnt>0) {
    		MyPageVO mpv = null;
    		mpv.setPage_memo(page_memo);
    		HttpSession session = request.getSession();
    		session.setAttribute("mpv", mpv.getPage_memo());
    		
    		nextpage="myPage.jsp";
    	}
    	
    	
    	return nextpage;
    }


}
