package vo;

import java.util.Date;

public class MyPageVO {
	
	private int page_seq;
	private int nutri_seq;
	private Date reg_date;
	private String user_id;
	private String page_memo;
	private String nutri_class;
	private String class_sat;
	
	
	public String getNutri_class() {
		return nutri_class;
	}
	public void setNutri_class(String nutri_class) {
		this.nutri_class = nutri_class;
	}
	public String getClass_sat() {
		return class_sat;
	}
	public void setClass_sat(String class_sat) {
		this.class_sat = class_sat;
	}
	public int getPage_seq() {
		return page_seq;
	}
	public void setPage_seq(int page_seq) {
		this.page_seq = page_seq;
	}
	public int getNutri_seq() {
		return nutri_seq;
	}
	public void setNutri_seq(int nutri_seq) {
		this.nutri_seq = nutri_seq;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPage_memo() {
		return page_memo;
	}
	public void setPage_memo(String page_memo) {
		this.page_memo = page_memo;
	}
	
	
	
	

}
