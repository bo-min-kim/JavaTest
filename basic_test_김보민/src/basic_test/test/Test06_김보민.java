package basic_test.test;

import java.util.Arrays;

public class Test06_김보민 {
	// 두배열이 같은지 출력하는 코드를 작성해 주세요 
	private static boolean equals(int[] arr1, int[] arr2) {
		if(arr1.length != arr2.length) {
			return false;
		}
		for(int i = 0; i < (arr1.length); i++) {
			if(arr1[i] != arr2[i]) {
				return false;
			}
		}
		return true;
	}
	
	public static void main(String[] args) {
		int[] arr1 = { 1, 2, 3 };
		int[] arr2 = { 1, 2, 3 };

		if(equals(arr1, arr2)) {
			System.out.println("arr1, arr2는 구성이 같은 배열입니다.");
		}
	}

	
}
