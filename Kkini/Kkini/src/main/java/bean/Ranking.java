package bean;

public class Ranking {
	private int rk_no; //pk
	private String rk_id;
	private String rk_restaurant;
	private String rk_menu;
	private String rk_category;
	private String rk_memo;
	private String rk_address;
	private String rk_location1;
	private String rk_location2;
	
	public Ranking(int rk_no, String rk_id, String rk_restaurant, String rk_menu, String rk_category, String rk_memo,
			String rk_address, String rk_location1, String rk_location2) {
		super();
		this.rk_no = rk_no;
		this.rk_id = rk_id;
		this.rk_restaurant = rk_restaurant;
		this.rk_menu = rk_menu;
		this.rk_category = rk_category;
		this.rk_memo = rk_memo;
		this.rk_address = rk_address;
		this.rk_location1 = rk_location1;
		this.rk_location2 = rk_location2;
	}
	
	public Ranking() {
		
	}

	@Override
	public String toString() {
		return "Ranking [rk_no=" + rk_no + ", rk_id=" + rk_id + ", rk_restaurant=" + rk_restaurant + ", rk_menu="
				+ rk_menu + ", rk_category=" + rk_category + ", rk_memo=" + rk_memo + ", rk_address=" + rk_address
				+ ", rk_location1=" + rk_location1 + ", rk_location2=" + rk_location2 + "]";
	}

	public int getRk_no() {
		return rk_no;
	}

	public void setRk_no(int rk_no) {
		this.rk_no = rk_no;
	}

	public String getRk_id() {
		return rk_id;
	}

	public void setRk_id(String rk_id) {
		this.rk_id = rk_id;
	}

	public String getRk_restaurant() {
		return rk_restaurant;
	}

	public void setRk_restaurant(String rk_restaurant) {
		this.rk_restaurant = rk_restaurant;
	}

	public String getRk_menu() {
		return rk_menu;
	}

	public void setRk_menu(String rk_menu) {
		this.rk_menu = rk_menu;
	}

	public String getRk_category() {
		return rk_category;
	}

	public void setRk_category(String rk_category) {
		this.rk_category = rk_category;
	}

	public String getRk_memo() {
		return rk_memo;
	}

	public void setRk_memo(String rk_memo) {
		this.rk_memo = rk_memo;
	}

	public String getRk_address() {
		return rk_address;
	}

	public void setRk_address(String rk_address) {
		this.rk_address = rk_address;
	}

	public String getRk_location1() {
		return rk_location1;
	}

	public void setRk_location1(String rk_location1) {
		this.rk_location1 = rk_location1;
	}

	public String getRk_location2() {
		return rk_location2;
	}

	public void setRk_location2(String rk_location2) {
		this.rk_location2 = rk_location2;
	}
}
