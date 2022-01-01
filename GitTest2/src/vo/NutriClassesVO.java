package vo;

public class NutriClassesVO {
	private String choice;
	private String nclass;
	private int sat;
	private int pos;
	private int neg;
	private String photo;
	
	
	public NutriClassesVO() {
		super();
	}
	
	public NutriClassesVO(String choice, String nclass, int sat, int pos, int neg, String photo) {
		super();
		this.choice = choice;
		this.nclass = nclass;
		this.sat = sat;
		this.pos = pos;
		this.neg = neg;
		this.photo = photo;
	}

	public String getChoice() {
		return choice;
	}
	public void setChoice(String choice) {
		this.choice = choice;
	}
	public String getNclass() {
		return nclass;
	}
	public void setNclass(String nclass) {
		this.nclass = nclass;
	}
	public int getSat() {
		return sat;
	}
	public void setSat(int sat) {
		this.sat = sat;
	}
	public int getPos() {
		return pos;
	}
	public void setPos(int pos) {
		this.pos = pos;
	}
	public int getNeg() {
		return neg;
	}
	public void setNeg(int neg) {
		this.neg = neg;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}	
