package string;

public class String_Ex1 {

	public static void main(String[] args) {
		/*
		 * String은 하나의 class이고 문자열은 문자의 나열이다.
		 * 자바에서 String 클래스는 char의 배열이며 char의 배열과 메서드들의 집합을 합친것이다.
		 * 
		 */
		String a = "a";
		String b = "b";

		a = a + b;
		
		System.out.println(a);
		
		String str1 = "abc";
		String str2 = "abc";
		
		String str3 = new String("abc");
		String str4 = new String("abc");
		
		if(str1 == str2) {
			System.out.println("1과 2 둘은 같아");
		} else {
			System.out.println("1과 2 둘은 다르다");
		}
		if(str1 == str2) {
			System.out.println("1과 2 둘은 같아");
		} else {
			System.out.println("1과 2 둘은 다르다");
		}
		
		String str = "";
		
		// 내용 비교
		String s = "hello";
		String k = "hello";
		
		boolean d = s.equals("hello");
		boolean f = s.equals("Hello");
		
		System.out.println(d);
		System.out.println(f);
		
		if(s.equals(k)) {
			System.out.println("두개는 같다");
		} else {
			System.out.println("두개는 같지 않다");
		}
		
		// 위치 파악(반환값 int값)
		String t = "hello";
		int idx1 = t.indexOf('o'); // o 요소가 위치해 있는가?
		int idx2 = t.indexOf('k'); // k 요소가 위치해 있는가?
		
		System.out.println(idx1);
		System.out.println(idx2);
		
		if(idx2 < 0) {
			System.out.println("없다"); // -1은 요소가 없음을 의미한다.
		} else {
			System.out.println("있다");
		}
		
		String g = "ABCDEFG";
		int idx = g.indexOf("CD"); // 0을 기준으로 세번째 값부터 시작하므로
		
		System.out.println(idx);
		
		String p = "java.lang.Object";
		int index1 = p.lastIndexOf('.'); // 거꾸로 카운트 한다. 15글자중에서 거꾸로 카운트... 15-14-13.... (배열의 괄호를 없애기 위해..)
		int index2 = p.indexOf('.'); // 정방향으로 카운트 한다. 0부터 카운트한다. (배열의 괄호를 없애기 위해..)
		
		System.out.println(index1);
		System.out.println(index2);
		
		// 길이 비교
		String o = "HELLO";
		int length = o.length();
		
		System.out.println(length);
		
		// 배열 수정
		String animals = "dog,cat,bear";
		String[] arr = animals.split(",");
		
		for (int i = 0; i < arr.length; i++) {
			System.out.println(arr[i]);
		}
		
		for(String brr : arr) {
			System.out.println(brr);
		}
		
		// 값을 자른다. int값이 아닌 문자값을 반환한다.
		String i = "java.lang.Object";
		String c = i.substring(10);
		String q = i.substring(5,9);
		
		System.out.println(c);
		System.out.println(q);
		
		// 값을 자른다.(맨 뒤의 공백을 자른다.) 맨 앞의 공백을 자르는 메서드는 없다.
		String x = "안녕하세요   ";
		String s1 = x.trim();
		
		System.out.println(s1);
		
		// Static 메서드이기때문에 생성자를 사용하지않고 클래스 이름으로 메서드를 호출하여 사용한다.
		String u = String.valueOf(12);
		
		System.out.println(u);
		
		// replace([기존문자], [바꿀문자])
		String K = "무궁화. 삼천리. 화려강산. 대한사람. 대한으로. 길이. 보전하세";
		K = K.replace(".", "/");
		System.out.println(K);
		
	}

}
