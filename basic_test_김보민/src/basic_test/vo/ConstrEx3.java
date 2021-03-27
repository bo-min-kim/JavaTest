package basic_test.vo;

import java.util.Scanner;

public class ConstrEx3 {

	public static void main(String[] args) {
		
		ConstrEx2 co = new ConstrEx2();
		// ConstrEx2 co2 = new ConstrEx2(1, "kqhals", "kqhals", "1234", "dfdfdf", "010-0000-0000");

		co.setBorder_id("skrdud208");
		
		Scanner sc = new Scanner(System.in);

		System.out.println("아이디를 입력하세요");
		co.setBorder_id(sc.nextLine());
		
		System.out.println("이름을 입력하세요");
		co.setBorder_name(sc.nextLine());
		System.out.println(co.toString());
		
		System.out.println("이름 : " + co.getBorder_id());
		
		
	}

}
