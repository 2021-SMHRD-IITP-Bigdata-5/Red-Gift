package vo;

public class NutriIngreVo {
	private int ingre_seq;
	private int nutri_seq;
	private String ingre_name;
	private String ingre_effect;
	private String expired_date;
	public NutriIngreVo(int ingre_seq, int nutri_seq, String ingre_name, String ingre_effect, String expired_date) {
		super();
		this.ingre_seq = ingre_seq;
		this.nutri_seq = nutri_seq;
		this.ingre_name = ingre_name;
		this.ingre_effect = ingre_effect;
		this.expired_date = expired_date;
	}
	public int getIngre_seq() {
		return ingre_seq;
	}
	public void setIngre_seq(int ingre_seq) {
		this.ingre_seq = ingre_seq;
	}
	public int getNutri_seq() {
		return nutri_seq;
	}
	public void setNutri_seq(int nutri_seq) {
		this.nutri_seq = nutri_seq;
	}
	public String getIngre_name() {
		return ingre_name;
	}
	public void setIngre_name(String ingre_name) {
		this.ingre_name = ingre_name;
	}
	public String getIngre_effect() {
		return ingre_effect;
	}
	public void setIngre_effect(String ingre_effect) {
		this.ingre_effect = ingre_effect;
	}
	public String getExpired_date() {
		return expired_date;
	}
	public void setExpired_date(String expired_date) {
		this.expired_date = expired_date;
	}
	
	
	
}
