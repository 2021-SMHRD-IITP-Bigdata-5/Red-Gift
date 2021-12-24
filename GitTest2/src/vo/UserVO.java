package vo;


public class UserVO {
	
	private String user_id;
	private String user_pw;
	private String user_nick;
	private String user_name;
	private String user_birth;
	private String user_sex;
	private String user_phone;
	private String user_joindate;
	private String admin_yesno;
	
	
	
	
	
	public UserVO(String user_id, String user_nick, String user_name, String user_birth, String user_sex,
			String user_phone) {
		super();
		this.user_id = user_id;
		this.user_nick = user_nick;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_sex = user_sex;
		this.user_phone = user_phone;
	}




	public UserVO(String user_id, String user_pw, String user_nick, String user_name, String user_birth,
			String user_sex, String user_phone) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_sex = user_sex;
		this.user_phone = user_phone;
	}




	public UserVO(String user_id, String user_nick, String user_name, String user_birth, String user_sex,
			String user_phone, String user_joindate, String admin_yesno) {
		super();
		this.user_id = user_id;
		this.user_nick = user_nick;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_sex = user_sex;
		this.user_phone = user_phone;
		this.user_joindate = user_joindate;
		this.admin_yesno = admin_yesno;
	}




	public UserVO(String user_id, String user_pw, String user_nick, String user_name, String user_birth,
			String user_sex, String user_phone, String user_joindate, String admin_yesno) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_sex = user_sex;
		this.user_phone = user_phone;
		this.user_joindate = user_joindate;
		this.admin_yesno = admin_yesno;
	}




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




	public String getUser_nick() {
		return user_nick;
	}




	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}




	public String getUser_name() {
		return user_name;
	}




	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}




	public String getUser_birth() {
		return user_birth;
	}




	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}




	public String getUser_sex() {
		return user_sex;
	}




	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}




	public String getUser_phone() {
		return user_phone;
	}




	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}




	public String getUser_joindate() {
		return user_joindate;
	}




	public void setUser_joindate(String user_joindate) {
		this.user_joindate = user_joindate;
	}




	public String getAdmin_yesno() {
		return admin_yesno;
	}




	public void setAdmin_yesno(String admin_yesno) {
		this.admin_yesno = admin_yesno;
	}
	
	
	
	
	
}
