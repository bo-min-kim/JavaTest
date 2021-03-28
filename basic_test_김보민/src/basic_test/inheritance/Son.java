package basic_test.inheritance;

public class Son extends Family implements Job {
	public Son() {
		
	}
	
	public Son(String name) {
		super(name);
	}
	
	@Override
	public String work() {
		
		return "공부를 한다.";
	}
	
	@Override
	public String toString() {
		return super.toString() + work();
	}
	
}
