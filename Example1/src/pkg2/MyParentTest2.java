package pkg2;

import pkg1.MyParent;

class MyChild extends MyParent {

	public void printMembers() {
		//System.out.println(prv); 에러
		//System.out.println(dft); 에러
		System.out.println(prt); // 다른패키지더라도 자손이기 때문에 사용가능
		System.out.println(pub); // 접근제한이 없음
	}
}

public class MyParentTest2 {
	
public static void main(String[] args) {
		MyParent p = new MyParent();
		//System.out.println(p.prv); 에러
		//System.out.println(p.dft); 에러
		//System.out.println(p.prt); 에러
		System.out.println(p.pub); // 퍼블릭만 접근이 가능
}
}


