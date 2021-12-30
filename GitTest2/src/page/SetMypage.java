package page;

import inter.command;
import vo.MyPageVO;
import vo.UserVO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MypageDAO;


@WebServlet("/SetMypage")
public class SetMypage extends HttpServlet implements command {
	private static final long serialVersionUID = 1L;


    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
    	HttpSession session = request.getSession();
    	UserVO uv = (UserVO) session.getAttribute("uservo");
    	
    	int peg_seq =Integer.parseInt(request.getParameter("peg_seq"));
    	int nutri_seq = Integer.parseInt(request.getParameter("nutri_seq"));
    	String nutri_class = request.getParameter("nutri_class");
    	String my_class_sat = request.getParameter("my_class_sat");
    	String reg_date = request.getParameter("reg_date");
    	String user_id = request.getParameter(uv.getUser_id());
    	String page_memo = request.getParameter("page_memo");
    	
    	MypageDAO dao = new MypageDAO();
    	MyPageVO mpv = new MyPageVO(peg_seq, nutri_seq, nutri_class, my_class_sat, reg_date, user_id, page_memo);
    	
    	dao.SetMypage(mpv);
    	
    	return null;
    }



}
