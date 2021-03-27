package bacic_test.list;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class CollectEx1 {

	/*
	 *  자바에서는 데이터를 정제하거나, 전송하는 역활을 한다. 개발자는 이 방식을 고민해야 한다.
	 *  list, set, map
	 *  컬렉션 인터페이스 : list, set
	 *  = add, contains, remove, size, toArray(array 안에 새로운 array 생성) 
	 */
	public static void main(String[] args) {
		
		// list1 배열값
		ArrayList list1 = new ArrayList<Integer>();
		//list1.add(new Integer(5));
		list1.add(5);
		list1.add(4);
		list1.add(2);
		list1.add(0);
		list1.add(1);
		list1.add(3);
		
		System.out.println(list1);
		
		// list1의 요소를 꺼내어 보는 방법
		for(int i = 0; i < list1.size(); i++) {
			System.out.println(list1.get(i));
		}
		
		// subList(1, 4) 1부터 시작해서 4전까지
		ArrayList list2 = new ArrayList(list1.subList(1, 4));
		print(list1, list2);
		
		Collections.sort(list1);
		Collections.sort(list2);
		print(list1, list2);
		
		// containsAll : 반환하는 값이 boolean 이므로 참,거짓으로 나온다.
		System.out.println("4가 있나요?" + list1.contains(4));
		System.out.println("list1.containsAll(list2):" + list1.containsAll(list2));
		
		list2.add("B");
		list2.add("C");
		list2.add(3, "A");
		print(list1, list2);
		
		list2.set(3, "AA");
		print(list1, list2);
		
		// list1에서 list2와 겹치는 부분만 남기고 나머지는 삭제한다.
		System.out.println("list1.retainAll(list2):" + list1.retainAll(list2));
		print(list1, list2);
		
		// list2에서 list1에 포함된 객체들을 삭제한다.
		for(int i = list2.size()-1; i >= 0; i--) {
			if(list1.contains(list2.get(i)))
				list2.remove(i);
		}
		print(list1, list2);
		
		for(int i = 0; i <list2.size(); i++) {
			if(list1.contains(list2.get(i)))
				list2.remove(i);
		}		
		print(list1, list2);
	}
	
		static void print(ArrayList list1, ArrayList list2) {
		System.out.println("list1: " + list1);
		System.out.println("list2: " + list2);
		System.out.println();
	}

}
