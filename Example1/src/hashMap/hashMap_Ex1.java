package hashMap;

import java.util.HashMap;

public class hashMap_Ex1 {
	/*
	 * - 컬렉션 프레임워크는 총 3종류가 있다. 
	 * : list(배열과 비슷한 자료구조형, 순서가있으며 중복이된다.)
	 * 	set(집합, 순서가 없고 중복이 안됨)
	 * 	map(순서가 없고, 키는 중복안되고, 값은 중복이된다.)
	 * 
	 * : 컬렉션 프레임워크는 시스아웃에 전체 키와 값이 출력된다.(toString을 쓰지 않아도...)
	 * 
	 * - map은 3종류가 있다. 
	 * : hashtable
	 * 	hashmap(순서 없음, 키와 값이 존재함.) 
	 * 	/Linkedhashmap(순서 있음)
	 * 	treemap
	 * 
	 * - 컬렉션 인터페이스는 총 2종류가 있다. 
	 * 
	 */
	public static void main(String[] args) {
		// 키와 값을 맵핑하기위해 map을 사용한다.
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("myId", "1234");
		map.put("asdf", "5678");
		map.put("asef", "9123");

		System.out.println(map);
	}

}
