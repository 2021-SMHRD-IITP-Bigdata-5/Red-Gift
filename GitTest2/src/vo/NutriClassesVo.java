package vo;

public class NutriClassesVo {
	private String nclass;
	private int sat;
	private int pos;
	private int neg;
	
	public NutriClassesVo() {
		
	}
	public NutriClassesVo(String nclass, int sat, int pos, int neg) {
		super();
		this.nclass = nclass;
		this.sat = sat;
		this.pos = pos;
		this.neg = neg;
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
