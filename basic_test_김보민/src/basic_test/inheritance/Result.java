package basic_test.inheritance;

import java.util.Scanner;

public class Result {

	public static void main(String[] args) {
		
		Fruit f1 = new Banana();
		Fruit f2 = new Peach();
	
		Scanner sc = new Scanner(System.in);
	
		int number;
		number = sc.nextInt();
	
		if(number == 1) {
			f1.show();
		} else {
			f2.show();
		}
	}
}
