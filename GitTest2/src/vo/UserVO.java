package vo;

import java.util.Date;

public class UserVO {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private Date user_birth;
	private Date user_joindate;
	private String admin_yesno;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Date getUser_birth() {
		return user_birth;
	}
	public void setUser_age(Date user_birth) {
		this.user_birth = user_birth;
	}
	public Date getUser_joindate() {
		return user_joindate;
	}
	public void setUser_joindate(Date user_joindate) {
		this.user_joindate = user_joindate;
	}
	public String getAdmin_yesno() {
		return admin_yesno;
	}
	public void setAdmin_yesno(String admin_yesno) {
		this.admin_yesno = admin_yesno;
	}
	
	
	
	
}
