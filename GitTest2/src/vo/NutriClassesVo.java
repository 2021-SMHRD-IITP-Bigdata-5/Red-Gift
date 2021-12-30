package vo;

public class NutriClassesVo {
	private String nclass;
	private int sat;
	private int pos;
	private int neg;
	private String class_photo;
	private String choice;
	private int rank;
	
	
	
	public NutriClassesVo() {
		
	}

	
	
	public NutriClassesVo(String nclass, int sat, int pos, int neg, String class_photo, String choice, int rank) {
		super();
		this.nclass = nclass;
		this.sat = sat;
		this.pos = pos;
		this.neg = neg;
		this.class_photo = class_photo;
		this.choice = choice;
		this.rank = rank;
	}



	public String getClass_photo() {
		return class_photo;
	}



	public void setClass_photo(String class_photo) {
		this.class_photo = class_photo;
	}



	public String getChoice() {
		return choice;
	}



	public void setChoice(String choice) {
		this.choice = choice;
	}



	public int getRank() {
		return rank;
	}



	public void setRank(int rank) {
		this.rank = rank;
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
	
	
	
	
}
