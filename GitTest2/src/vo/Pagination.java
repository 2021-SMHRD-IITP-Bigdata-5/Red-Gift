package vo;

public class Pagination {

	
	//article=record=rows on page
	//page=list=indices
	
	
	private int pageSize=3;
	private int firstPageNo;
	private int lastPageNo;
	
	private int currentPageNo=1;//-------------
	private int firstArticleIndex;
	private int lastArticleIndex;
	
	private int articleCountPerPage=5;
	private int totalPageCount;
	private int totalArticleCount;
	
	public Pagination() {

	}
	public Pagination(int pageSize, int firstPageNo, int lastPageNo, int currentPageNo, int firstArticleIndex,
			int lastArticleIndex, int articleCountPerPage, int totalPageCount, int totalArticleCount) {
		super();
		this.pageSize = pageSize;
		this.firstPageNo = firstPageNo;
		this.lastPageNo = lastPageNo;
		this.currentPageNo = currentPageNo;
		this.firstArticleIndex = firstArticleIndex;
		this.lastArticleIndex = lastArticleIndex;
		this.articleCountPerPage = articleCountPerPage;
		this.totalPageCount = totalPageCount;
		this.totalArticleCount = totalArticleCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getFirstPageNo() {
		int firstPageNo=1;
		firstPageNo=((currentPageNo-1)/pageSize)*pageSize+1;
		return firstPageNo;
	}
	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}
	public int getLastPageNo() {
		int lastPageNo=3;
		lastPageNo=(int) Math.ceil(currentPageNo/pageSize);
		return lastPageNo;
	}
	public void setLastPageNo(int lastPageNo) {
		this.lastPageNo = lastPageNo;
	}
	public int getCurrentPageNo() {
		return currentPageNo;
	}
	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}
	public int getFirstArticleIndex() {
		int firstArticleIndex=1;
		firstArticleIndex = (currentPageNo - 1)/articleCountPerPage * articleCountPerPage +1;
		
		return firstArticleIndex;
	}
	public void setFirstArticleIndex(int firstArticleIndex) {
		this.firstArticleIndex = firstArticleIndex;
	}
	public int getLastArticleIndex() {
		int lastArticleIndex=5;
		lastArticleIndex = currentPageNo*articleCountPerPage;
		
		return lastArticleIndex;
	}
	public void setLastArticleIndex(int lastArticleIndex) {
		this.lastArticleIndex = lastArticleIndex;
	}
	public int getArticleCountPerPage() {
		return articleCountPerPage;
	}
	public void setArticleCountPerPage(int articleCountPerPage) {
		this.articleCountPerPage = articleCountPerPage;
	}
	public int getTotalPageCount() {
		int totalPageCount=0;
		totalPageCount=((totalArticleCount-1)/articleCountPerPage)+1;
		
		return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getTotalArticleCount() {
		return totalArticleCount;
	}
	public void setTotalArticleCount(int totalArticleCount) {
		this.totalArticleCount = totalArticleCount;
	}
	
	
	
	
	
	
	
}
