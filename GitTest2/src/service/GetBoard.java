package service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import inter.command;
import vo.CommunityVO;
import vo.Pagination;

public class GetBoard implements command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		ArrayList<CommunityVO> arr = new ArrayList<>();
		BoardDAO dao = new BoardDAO();
		Pagination pp = new Pagination();
		
		request.setCharacterEncoding("UTF-8");
		int no=1;
//		if(request.getParameter("currentPageNo")!=null) {
//		no = Integer.parseInt(request.getParameter("currentPageNo"));
//		}
		pp.setCurrentPageNo(no);
		
		int total=dao.getTotalAticleCount();
		pp.setTotalArticleCount(total);
		
		int f = pp.getFirstArticleIndex();
		int l = pp.getLastArticleIndex();
		arr=dao.articleList(f,l);
		int first = pp.getFirstPageNo();
		int last = pp.getLastPageNo();
		int pageSize = pp.getPageSize();
		request.setAttribute("currentPageNo", no);
		request.setAttribute("FirstPageNo", first);
		request.setAttribute("LastPageNo", last );
		request.setAttribute("PageSize",pageSize );
		request.setAttribute("arr", arr );
		
		
		
		
		return "articleBoard.jsp";
	}

}
