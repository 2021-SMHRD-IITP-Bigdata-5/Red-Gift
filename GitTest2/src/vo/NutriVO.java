package vo;

public class NutriVO {
	private String choice;
	private String nutri_name;
	private float nutri_pos;
	private String nutri_photo;
	public String getChoice() {
		return choice;
	}
	public void setChoice(String choice) {
		this.choice = choice;
	}
	public String getNutri_name() {
		return nutri_name;
	}
	public void setNutri_name(String nutri_name) {
		this.nutri_name = nutri_name;
	}
	public float getNutri_pos() {
		return nutri_pos;
	}
	public void setNutri_pos(float nutri_pos) {
		this.nutri_pos = nutri_pos;
	}
	public String getNutri_photo() {
		return nutri_photo;
	}
	public void setNutri_photo(String nutri_photo) {
		this.nutri_photo = nutri_photo;
	}
	public NutriVO(String choice, String nutri_name, float nutri_pos, String nutri_photo) {
		super();
		this.choice = choice;
		this.nutri_name = nutri_name;
		this.nutri_pos = nutri_pos;
		this.nutri_photo = nutri_photo;
	}
	
}
