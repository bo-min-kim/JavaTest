package basic_test.test;

import java.util.Scanner;

public class Test04_김보민 {

	/*
	 * 콘솔에 사용자가 값을 입력하면 
	 * 두개의 합을 출력해주는 프로그램을 만들어 주세요 ^^ 
	 * 
	 * 예시)
	 * A값을 입력하세요 : 15
	 * B값을 입력하세요 : 10
	 * 15+10 = 25
	 * 
	 * 
	 */
	
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		int A = 0;
		int B = 0;
		
		System.out.print("A값을 입력하세요 :");
		A = scan.nextInt();
		
		System.out.print("B값을 입력하세요 :");
		B = scan.nextInt();
		
		int result = 0;
		
		result = A + B;
		
		System.out.print(A + "+" + B + " = " + result);
	}

}
