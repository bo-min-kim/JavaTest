package basic_test.vo;

public class MainTest {

	public static void main(String[] args) {
	
		ConstrEx1 ex = new ConstrEx1();
		ConstrEx1 ex2 = new ConstrEx1(1, "kqhals", "kqhals", "1234", "dfdfdf", "010-0000-0000");
		
		System.out.println(ex2.toString());
		ex.setMember_id("skrdud");
		System.out.println(ex.getMember_id());

	}

}
