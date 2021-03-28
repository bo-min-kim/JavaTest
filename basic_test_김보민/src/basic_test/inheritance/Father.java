package basic_test.inheritance;

public class Father extends Family implements Job {
	public Father() {
		
	}
	
	public Father(String name) {
		super(name);
	}
	
	@Override
	public String work() {
		
		return "나가서 일을 한다.";
	}
	
	@Override
	public String toString() {
		return super.toString() + work();
	}
}
