package pkg1;

// 하나의 소스 파일에는 퍼블릭 클래스는 딱 하나만
// 퍼블릭 클래스 이름과 소스파일의 이름은 일치해야한다.
public class MyParent { // 접근제어자가 default
	
	private int prv; // 같은클래스
	int dft; // 같은 패키지
	protected int prt; // 같은패키지 + 자손(다른 패키지)
	public int pub; // 접근 제한이 없음
	
	public void printMembers() {
		System.out.println(prv);
		System.out.println(dft);
		System.out.println(prt);
		System.out.println(pub);
	}
	
}

class MyParentTest {
	
	public static void main(String[] args) {
		MyParent p = new MyParent();
		//System.out.println(p.prv); 에러
		System.out.println(p.dft);
		System.out.println(p.prt);
		System.out.println(p.pub);
	}
}