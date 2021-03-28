package basic_test.inheritance;

public class MainEx {

	public static void main(String[] args) {
		
		Father fa = new Father("홍길동");
		Mother ma = new Mother("소천");
		Son so = new Son("홍준표");
		
		System.out.println(fa);
		System.out.println(ma);
		System.out.println(so);
		System.out.println("========================================");
		
	}
	
}
