package vo;

public class ChoiceVO {
	private String choice;
	private String class1;
	private String class2;
	private String class3;
	
	public String getChoice() {
		return choice;
	}
	public void setChoice(String choice) {
		this.choice = choice;
	}
	public String getClass1() {
		return class1;
	}
	public void setClass1(String class1) {
		this.class1 = class1;
	}
	public String getClass2() {
		return class2;
	}
	public void setClass2(String class2) {
		this.class2 = class2;
	}
	public String getClass3() {
		return class3;
	}
	public void setClass3(String class3) {
		this.class3 = class3;
	}
	public ChoiceVO() {
		
	}
	public ChoiceVO(String class1, String class2, String class3) {

		this.class1 = class1;
		this.class2 = class2;
		this.class3 = class3;
	}
	public ChoiceVO(String choice, String class1, String class2, String class3) {
		super();
		this.choice = choice;
		this.class1 = class1;
		this.class2 = class2;
		this.class3 = class3;
	}
	
}
