package page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MypageDAO;
import inter.command;

public class UpdateMypage implements command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
    	String nextpage=null;
    	int page_seq = Integer.parseInt(request.getParameter("page_seq"));
    	String page_memo = request.getParameter("page_memo");
    	
    	MypageDAO dao = new MypageDAO();
    	int cnt=0; 
    	cnt=dao.UpdateMypage(page_seq, page_memo);
    	if(cnt==0) System.out.print("메모업데이트실패메세지인서비스");
 
    	return nextpage;
    }


}
