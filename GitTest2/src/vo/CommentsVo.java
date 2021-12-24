package vo;

public class CommentsVo {
	private int commnet_seq;
	private String comment_contents;
	private String reg_date;
	private String user_id;
	private int article_seq;
	
	
	
	
	public CommentsVo(int commnet_seq, String comment_contents, String comment_subject, String reg_date, String user_id,
			int article_seq) {
		super();
		this.commnet_seq = commnet_seq;
		this.comment_contents = comment_contents;
	
		this.reg_date = reg_date;
		this.user_id = user_id;
		this.article_seq = article_seq;
	}
	public int getCommnet_seq() {
		return commnet_seq;
	}
	public void setCommnet_seq(int commnet_seq) {
		this.commnet_seq = commnet_seq;
	}
	public String getComment_contents() {
		return comment_contents;
	}
	public void setComment_contents(String comment_contents) {
		this.comment_contents = comment_contents;
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
	public int getArticle_seq() {
		return article_seq;
	}
	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}
	
	
	
}
