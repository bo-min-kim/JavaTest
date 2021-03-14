package hashMap;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class hashMap_Ex2 {
	/*
	 * - HashMap에는 여러가지 메서드 들이 있는데
	 * 1. put : 키와 값을 넣는다. 키는 중복허용이 불가하지만 값은 중복허용이 가능
	 * 2. remove : 삭제, replace : 교체
	 * 3. get : 특정 키를 써서 값을 가져온다.
	 * 4. containsKey() 해당 키의 값이 포함되어 있는지
	 * 5. containsValue() 해당 값이 포함되어 있는지(값이 맞는값인지 아닌지 판별 x) 
	 *	// 값이 맞는지 틀린지 유무를 알기위해 .equals 사용한다.
	 * 6. size() 맵의 크기를 나타냄 == length
	 * 7. isEmpty() 맵이 비어있는지 확인할 수 있다.
	 * 
	 */
	public static void main(String[] args) {
		
		LinkedHashMap<Integer, String> map = new LinkedHashMap<Integer, String>();
		map.put(101, "둘리");
		map.put(102, "공룡");
		map.put(103, "둘리공룡");
		map.put(104, "고길동");
		map.replace(103, "또치");
		
		System.out.println(map);
		
		boolean a = map.containsKey(501);
		boolean b = map.containsValue("또치");
		
		if(a == true) {
			System.out.println("있다.");
		} else {
			System.out.println("없다.");
		}
		
		map.put(101, "둘리동생");
		map.put(102, "둘리동생");
		System.out.println(map);
		
		System.out.println(map.isEmpty());
		System.out.println(map.size());
		
		// map.clear(); map의 값을 싹 지운다.
		// map.clear();
		System.out.println(map);
		
		// map.remove(101); 
		// System.out.println(map);
		
		System.out.println("key : " + 101 + " value : " + map.get(101));
		System.out.println("key : " + 101 + " value : " + map.get(102));
		System.out.println("key : " + 101 + " value : " + map.get(103));
		System.out.println("key : " + 101 + " value : " + map.get(104));
		
	}	
}
