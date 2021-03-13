package basic_test.test;

public class Test03_김보민 {
	/*
	 * 기존에 선언된 변수(급여,세금)의  타입은 바꾸지 않습니다.
	 * 실수령 액을 출력해 주세요
	 * 메인 메서드에 입력하고 콘솔로 출력해 주세요 ^^ 
	 * 
	 * 실수령액 구하는 법 : 급여 -(급여*세금)
	 *	 
	 * */
	public static void main(String[] args) {
		int pay = 857650;
		double tax = 0.033;
		
		double result = pay -(pay * tax);
				
		System.out.println("실수령액 : " + result);
	}

}
