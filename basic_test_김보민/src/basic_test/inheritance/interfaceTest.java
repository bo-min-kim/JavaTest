package basic_test.inheritance;

public class interfaceTest implements catWorld{

	@Override
	public void call() {	
		System.out.println("야옹야옹");
	}
	
	@Override
	public void come() {
		System.out.println("야옹이 온다.");
		
	}
	
	public static void main(String[] args) {
		
		interfaceTest it = new interfaceTest();
		it.call();
		it.come();
		
		}
}
