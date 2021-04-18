package pkg3;

public class Exception_ex {
	/*
	 * - 예외처리하기.
	 * - 정의 : 프로그램 실행시 발생할 수 있는 예외의 발생을 대비하여 코드를 작성한다. 프로그램의 비정상적인 종료를 막는데 의의를 둔다.
	 * 
	 * - try에서 에러가 발생하면 일을 처리할 catch문을 찾아서 내려갑니다.
	 * - printStacktrace : 예외 발생 당시 호출 스택에 있었던 메서드 정보와 예외 정보를 출력.(콘솔에 보여줌)
	 * - getMessage : 발생한 예외클래스의 인스턴스에 저장된 메세지를 볼 수 있다.
	 *
	 * 1. 컴파일 에러  
	 * 2. 런타임 에러(多) : excption(미약한 에러)
	 * 	- 널 포인트 이셉션 : 파라미터에 널값이 들어오는것. (-> SQL확인, 변수명확인, 들어오는 파라미터의 타입형 확인)
	 * 3. 논리적 에러 
	 * 
	 */
	
	/*
	 * 일치하는 예외처리가 없으면 예외는 처리 되지 않음
	 * Exception이 선언된 catch 블럭은 든 예외 처리(마지막 catch블럭에서 작성해야한다.)
	 */
	
// ----------------------------------------------------------------------
//	System.out.println(1);
//	try {
//		System.out.println(2);
//	} catch (Exception e) {
//		System.out.println(3);
//		System.out.println(4);
//	}
//	System.out.println(5);	
	
// ---------------------------------------------------------------------
//	System.out.println(1);
//	try {
//		System.out.println(0/0);
//		System.out.println(2);
//	} catch (Exception e) {
//		e.printStackTrace();
//		System.out.println(3);
//	}
//	System.out.println(4);
	
// ---------------------------------------------------------------------
//	System.out.println(1);
//	System.out.println(2);
//	try {
//		System.out.println(3);
//		System.out.println(args[0]);
//		System.out.println(4);
//	} catch (ArithmeticException ae) {
//		if(ae instanceof ArithmeticException)
//			System.out.println("true");
//			System.out.println("ArithmeticException");
//	} catch (ArrayIndexOutOfBoundsException aer) {
//		System.out.println("ArrayIndexOutOfBoundsException");
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	
//	System.out.println(5);
	
	public static void main(String[] args) {
		System.out.println(1);
		System.out.println(2);
		try {
			System.out.println(3);
			System.out.println(0/0);
			System.out.println(4);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		System.out.println(5);
	}

}
