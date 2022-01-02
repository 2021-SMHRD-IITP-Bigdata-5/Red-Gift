package vo;

public class CommunityVO {

	private int article_seq;
	private String article_subject;
	private String article_content;
	private String reg_date;
	private String user_id;
	private String article_file1;
	private String article_file2;
	private String article_file3;

	public CommunityVO() {
		
	}
	
	public CommunityVO(int article_seq, String article_subject, String reg_date, String user_id) {
		super();
		this.article_seq = article_seq;
		this.article_subject = article_subject;
		this.reg_date = reg_date;
		this.user_id = user_id;
	}
	public CommunityVO(int article_seq, String article_subject, String article_content, String reg_date, String user_id,
			String article_file1, String article_file2, String article_file3) {
		super();
		this.article_seq = article_seq;
		this.article_subject = article_subject;
		this.article_content = article_content;
		this.reg_date = reg_date;
		this.user_id = user_id;
		this.article_file1 = article_file1;
		this.article_file2 = article_file2;
		this.article_file3 = article_file3;
	}
	public int getArticle_seq() {
		return article_seq;
	}
	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}
	public String getArticle_subject() {
		return article_subject;
	}
	public void setArticle_subject(String article_subject) {
		this.article_subject = article_subject;
	}
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getArticle_file1() {
		return article_file1;
	}
	public void setArticle_file1(String article_file1) {
		this.article_file1 = article_file1;
	}
	public String getArticle_file2() {
		return article_file2;
	}
	public void setArticle_file2(String article_file2) {
		this.article_file2 = article_file2;
	}
	public String getArticle_file3() {
		return article_file3;
	}
	public void setArticle_file3(String article_file3) {
		this.article_file3 = article_file3;
	}
	
	
	
	
}
