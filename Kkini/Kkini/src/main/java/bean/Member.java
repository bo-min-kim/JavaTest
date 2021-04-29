package bean;

public class Member {
	private String me_id;
	private String me_password;
	private String me_image;
	private String me_catagory;
	private String me_remark;
	
	public Member() {
		
	}
	
	public Member(String me_id, String me_password, String me_image, String me_catagory, String me_remark) {
		super();
		this.me_id = me_id;
		this.me_password = me_password;
		this.me_image = me_image;
		this.me_catagory = me_catagory;
		this.me_remark = me_remark;
	}

	@Override
	public String toString() {
		return "Member [me_id=" + me_id + ", me_password=" + me_password + ", me_image=" + me_image + ", me_catagory="
				+ me_catagory + ", me_remark=" + me_remark + "]";
	}

	public String getMe_id() {
		return me_id;
	}
	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}
	public String getMe_password() {
		return me_password;
	}
	public void setMe_password(String me_password) {
		this.me_password = me_password;
	}
	public String getMe_image() {
		return me_image;
	}
	public void setMe_image(String me_image) {
		this.me_image = me_image;
	}
	public String getMe_catagory() {
		return me_catagory;
	}
	public void setMe_catagory(String me_catagory) {
		this.me_catagory = me_catagory;
	}
	public String getMe_remark() {
		return me_remark;
	}
	public void setMe_remark(String me_remark) {
		this.me_remark = me_remark;
	}
	
}
