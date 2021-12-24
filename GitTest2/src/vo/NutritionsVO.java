package vo;

public class NutritionsVO {
	private int nutri_seq;
	private String nutri_name;
	private int nutri_sat;
	private int nutri_pos;
	private int nutri_neg;
	private String nutri_class;
	private String reg_date;
	public NutritionsVO(int nutri_seq, String nutri_name, int nutri_sat, int nutri_pos, int nutri_neg,
			String nutri_class, String reg_date) {
		super();
		this.nutri_seq = nutri_seq;
		this.nutri_name = nutri_name;
		this.nutri_sat = nutri_sat;
		this.nutri_pos = nutri_pos;
		this.nutri_neg = nutri_neg;
		this.nutri_class = nutri_class;
		this.reg_date = reg_date;
	}
	public int getNutri_seq() {
		return nutri_seq;
	}
	public void setNutri_seq(int nutri_seq) {
		this.nutri_seq = nutri_seq;
	}
	public String getNutri_name() {
		return nutri_name;
	}
	public void setNutri_name(String nutri_name) {
		this.nutri_name = nutri_name;
	}
	public int getNutri_sat() {
		return nutri_sat;
	}
	public void setNutri_sat(int nutri_sat) {
		this.nutri_sat = nutri_sat;
	}
	public int getNutri_pos() {
		return nutri_pos;
	}
	public void setNutri_pos(int nutri_pos) {
		this.nutri_pos = nutri_pos;
	}
	public int getNutri_neg() {
		return nutri_neg;
	}
	public void setNutri_neg(int nutri_neg) {
		this.nutri_neg = nutri_neg;
	}
	public String getNutri_class() {
		return nutri_class;
	}
	public void setNutri_class(String nutri_class) {
		this.nutri_class = nutri_class;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
