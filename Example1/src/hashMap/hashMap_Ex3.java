package hashMap;

import java.util.HashMap;
import java.util.Scanner;

public class hashMap_Ex3{
	/*
	 * 
	 */
	public static void main(String[] args) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("kqhals", "qhals1994");
		map.put("skrdud", "skrdud1904");
		map.put("balck", "black1904");
		
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			System.out.println("id와 password를 입력하세요.");
			System.out.print("id : ");
			
			// 트림은 공백 제거
			String id = sc.nextLine().trim();
			
			System.out.println("password : ");
			String password = sc.nextLine().trim();
			// System.out.println();
			
			if(!map.containsKey(id)) {
				System.out.println("입력하신 아이디는 존재하지 않습니다. 다시 입력해주세요");
				continue;
			}
			if(!(map.get(id).equals(password))) {
				System.out.println("비밀번호가 일치하지 않습니다. 다시 입력해 주세요.");
			}
			else {
				System.out.println("id와 비밀번호가 일치합니다.");
				break;
			}
		}
	}
}
