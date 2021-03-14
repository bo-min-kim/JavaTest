package string;

public class String_Ex2 {
	/*
	 * 
	 */
	public static void main(String[] args) {
		// 문자열 형변환
		String str = "123";
		int num = Integer.parseInt(str);
		System.out.println(num);
		
		// 숫자형 형변환
		int number = 12345;
		System.out.println(String.valueOf(number));
		System.out.println(Integer.toString(number));
		System.out.println(number);
	}

}
