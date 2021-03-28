package basic_test.inheritance;

public class Mother extends Family implements Job {
	public Mother() {
		
	}
	
	public Mother(String name) {
		super(name);
	}
	
	@Override
	public String work() {
		
		return "집안일을 한다.";
	}
	
	@Override
	public String toString() {
		return super.toString() + work();
	}
}
