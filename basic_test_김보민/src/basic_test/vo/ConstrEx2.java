package basic_test.vo;

public class ConstrEx2 {
	private int border_no;
	private String border_id;
	private String border_name;
	private String password;
	private String email;
	private String phone;
	
	public ConstrEx2() {
		super();
	}

	public ConstrEx2(int border_no, String border_id, String border_name, String password, String email, String phone) {
		super();
		this.border_no = border_no;
		this.border_id = border_id;
		this.border_name = border_name;
		this.password = password;
		this.email = email;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "ConstrEx2 [border_no=" + border_no + ", border_id=" + border_id + ", border_name=" + border_name
				+ ", password=" + password + ", email=" + email + ", phone=" + phone + "]";
	}

	public int getBorder_no() {
		return border_no;
	}

	public void setBorder_no(int border_no) {
		this.border_no = border_no;
	}

	public String getBorder_id() {
		return border_id;
	}

	public void setBorder_id(String border_id) {
		this.border_id = border_id;
	}

	public String getBorder_name() {
		return border_name;
	}

	public void setBorder_name(String border_name) {
		this.border_name = border_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
