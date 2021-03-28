package basic_test.inheritance;

public class Family {
	private String name;
	public Family() {
		
	}
	
	public Family(String name) {
		this.name = name;
	}
	
	public String toString() {
		return "이름 : " + name + "\n";
	}
}
