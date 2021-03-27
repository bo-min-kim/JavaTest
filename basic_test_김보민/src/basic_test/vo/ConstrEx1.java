package basic_test.vo;

public class ConstrEx1 {
	private int member_no;
	private String member_id;
	private String member_name;
	private String password;
	private String email;
	private String phone;
	
	public ConstrEx1() {
		super();
	}

	public ConstrEx1(int member_no, String member_id, String member_name, String password, String email, String phone) {
		super();
		this.member_no = member_no;
		this.member_id = member_id;
		this.member_name = member_name;
		this.password = password;
		this.email = email;
		this.phone = phone;
	}
	
	@Override
	public String toString() {
		return "ConstrEx1 [member_no=" + member_no + ", member_id=" + member_id + ", member_name=" + member_name
				+ ", password=" + password + ", email=" + email + ", phone=" + phone + "]";
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
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
