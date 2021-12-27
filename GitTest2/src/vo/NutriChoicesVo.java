package vo;

public class NutriChoicesVo {
	private int choice;
	private String nutri_class1;
	private String nutri_class2;
	private String nutri_class3;
	
	public NutriChoicesVo(String nutri_class1, String nutri_class2, String nutri_class3) {
		
		this.nutri_class1 = nutri_class1;
		this.nutri_class2 = nutri_class2;
		this.nutri_class3 = nutri_class3;
	}
	public NutriChoicesVo(int choice, String nutri_class1, String nutri_class2, String nutri_class3) {
		super();
		this.choice = choice;
		this.nutri_class1 = nutri_class1;
		this.nutri_class2 = nutri_class2;
		this.nutri_class3 = nutri_class3;
	}
	public int getChoise() {
		return choice;
	}
	public void setChoise(int choice) {
		this.choice = choice;
	}
	public String getNutri_class1() {
		return nutri_class1;
	}
	public void setNutri_class1(String nutri_class1) {
		this.nutri_class1 = nutri_class1;
	}
	public String getNutri_class2() {
		return nutri_class2;
	}
	public void setNutri_class2(String nutri_class2) {
		this.nutri_class2 = nutri_class2;
	}
	public String getNutri_class3() {
		return nutri_class3;
	}
	public void setNutri_class3(String nutri_class3) {
		this.nutri_class3 = nutri_class3;
	}
	
	
}
