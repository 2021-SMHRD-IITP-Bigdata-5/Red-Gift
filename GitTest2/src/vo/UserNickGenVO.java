package vo;

public class UserNickGenVO {
	private int gen_seq;
	private String gen_nickname;
	public UserNickGenVO(int gen_seq, String gen_nickname) {
		super();
		this.gen_seq = gen_seq;
		this.gen_nickname = gen_nickname;
	}
	public int getGen_seq() {
		return gen_seq;
	}
	public void setGen_seq(int gen_seq) {
		this.gen_seq = gen_seq;
	}
	public String getGen_nickname() {
		return gen_nickname;
	}
	public void setGen_nickname(String gen_nickname) {
		this.gen_nickname = gen_nickname;
	}
	
	

}
