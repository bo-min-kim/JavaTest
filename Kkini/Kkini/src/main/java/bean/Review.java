package bean;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Review {
	private final String MUST_INPUT = "필수 입력 사항입니다." ;	

	private String rw_no;
	
	@NotEmpty(message= "식당 이름은 " + MUST_INPUT)
	private String rw_name;
	
	private String rw_writer;
	
	private String rw_area;
	
	@NotNull(message="평점은 반드시 체크가 되어야 합니다.")
	private String rw_taste;
	
	@NotNull(message="평점은 반드시 체크가 되어야 합니다.")
	private String rw_price;
	
	@NotNull(message="평점은 반드시 체크가 되어야 합니다.")
	private String rw_service;
	
	@NotNull(message="평점은 반드시 체크가 되어야 합니다.")
	private String rw_total;
	
	@NotNull(message="평점은 반드시 체크가 되어야 합니다.")
	private String rw_revisit;
	
	private String rw_comment;
	
	@NotEmpty(message= "이미지는 " + MUST_INPUT)
	private String rw_image;
	
	private String rw_category;
	private String rw_remark;
	private String rw_want;
	private String rw_went;
	
	@NotEmpty(message= "메뉴는 " + MUST_INPUT)
	private String rw_menu;
	private String rw_location1; //위도
	private String rw_location2; //경도
	
	private MultipartFile multi ;	
	
	public MultipartFile getMulti() {
		return multi;
	}
	
	public void setMulti(MultipartFile multi) {
		this.multi = multi;
		
		if (this.multi != null) {
			this.rw_image = this.multi.getOriginalFilename();
		}
	}
	
	public Review(String rw_no, String rw_name, String rw_writer, String rw_area, String rw_taste, String rw_price,
			String rw_service, String rw_total, String rw_revisit, String rw_comment, String rw_image,
			String rw_category, String rw_remark, String rw_want, String rw_went, String rw_menu, String rw_location1,
			String rw_location2) {
		super();
		this.rw_no = rw_no;
		this.rw_name = rw_name;
		this.rw_writer = rw_writer;
		this.rw_area = rw_area;
		this.rw_taste = rw_taste;
		this.rw_price = rw_price;
		this.rw_service = rw_service;
		this.rw_total = rw_total;
		this.rw_revisit = rw_revisit;
		this.rw_comment = rw_comment;
		this.rw_image = rw_image;
		this.rw_category = rw_category;
		this.rw_remark = rw_remark;
		this.rw_want = rw_want;
		this.rw_went = rw_went;
		this.rw_menu = rw_menu;
		this.rw_location1 = rw_location1;
		this.rw_location2 = rw_location2;
	}

	public Review() {
	
	}
	
	@Override
	public String toString() {
		return "Review [MUST_INPUT=" + MUST_INPUT + ", rw_no=" + rw_no + ", rw_name=" + rw_name + ", rw_writer="
				+ rw_writer + ", rw_area=" + rw_area + ", rw_taste=" + rw_taste + ", rw_price=" + rw_price
				+ ", rw_service=" + rw_service + ", rw_total=" + rw_total + ", rw_revisit=" + rw_revisit
				+ ", rw_comment=" + rw_comment + ", rw_image=" + rw_image + ", rw_category=" + rw_category
				+ ", rw_remark=" + rw_remark + ", rw_want=" + rw_want + ", rw_went=" + rw_went + ", rw_menu=" + rw_menu
				+ ", rw_location1=" + rw_location1 + ", rw_location2=" + rw_location2 + "]";
	}

	public String getRw_no() {
		return rw_no;
	}
	public void setRw_no(String rw_no) {
		this.rw_no = rw_no;
	}
	public String getRw_name() {
		return rw_name;
	}
	public void setRw_name(String rw_name) {
		this.rw_name = rw_name;
	}
	public String getRw_writer() {
		return rw_writer;
	}
	public void setRw_writer(String rw_writer) {
		this.rw_writer = rw_writer;
	}
	public String getRw_area() {
		return rw_area;
	}
	public void setRw_area(String rw_area) {
		this.rw_area = rw_area;
	}
	public String getRw_taste() {
		return rw_taste;
	}
	public void setRw_taste(String rw_taste) {
		this.rw_taste = rw_taste;
	}
	public String getRw_price() {
		return rw_price;
	}
	public void setRw_price(String rw_price) {
		this.rw_price = rw_price;
	}
	public String getRw_service() {
		return rw_service;
	}
	public void setRw_service(String rw_service) {
		this.rw_service = rw_service;
	}
	public String getRw_total() {
		return rw_total;
	}
	public void setRw_total(String rw_total) {
		this.rw_total = rw_total;
	}
	public String getRw_revisit() {
		return rw_revisit;
	}
	public void setRw_revisit(String rw_revisit) {
		this.rw_revisit = rw_revisit;
	}
	public String getRw_comment() {
		return rw_comment;
	}
	public void setRw_comment(String rw_comment) {
		this.rw_comment = rw_comment;
	}
	public String getRw_image() {
		return rw_image;
	}
	public void setRw_image(String rw_image) {
		this.rw_image = rw_image;
	}
	public String getRw_category() {
		return rw_category;
	}
	public void setRw_category(String rw_category) {
		this.rw_category = rw_category;
	}
	public String getRw_remark() {
		return rw_remark;
	}
	public void setRw_remark(String rw_remark) {
		this.rw_remark = rw_remark;
	}
	public String getRw_want() {
		return rw_want;
	}
	public void setRw_want(String rw_want) {
		this.rw_want = rw_want;
	}
	public String getRw_went() {
		return rw_went;
	}
	public void setRw_went(String rw_went) {
		this.rw_went = rw_went;
	}
	public String getRw_menu() {
		return rw_menu;
	}
	public void setRw_menu(String rw_menu) {
		this.rw_menu = rw_menu;
	}
	public String getRw_location1() {
		return rw_location1;
	}
	public void setRw_location1(String rw_location1) {
		this.rw_location1 = rw_location1;
	}
	public String getRw_location2() {
		return rw_location2;
	}
	public void setRw_location2(String rw_location2) {
		this.rw_location2 = rw_location2;
	}
}
