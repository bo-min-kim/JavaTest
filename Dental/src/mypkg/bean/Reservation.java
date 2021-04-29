package mypkg.bean;

public class Reservation {
	private int no;
	private String name;
	private String rephone;
	private String sector;
	private String redate;
	private String rehour;
	private String comments;
	
	
	
	@Override
	public String toString() {
		return "Reservation [no=" + no + ", name=" + name + ", rephone=" + rephone + ", sector=" + sector + ", redate="
				+ redate + ", rehour=" + rehour + ", comments=" + comments + "]";
	}

	public Reservation() {
		super();	
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRephone() {
		return rephone;
	}
	public void setRephone(String rephone) {
		this.rephone = rephone;
	}
	public String getSector() {
		return sector;
	}
	public void setSector(String sector) {
		this.sector = sector;
	}
	public String getRedate() {
		return redate;
	}
	public void setRedate(String redate) {
		this.redate = redate;
	}
	public String getRehour() {
		return rehour;
	}
	public void setRehour(String rehour) {
		this.rehour = rehour;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
		
}


