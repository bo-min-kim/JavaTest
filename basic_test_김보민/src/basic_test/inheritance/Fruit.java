package basic_test.inheritance;

public class Fruit {
	// 복숭아, 바나나 클래스 만들고 main 클래스에 호출 => 다형성을 출력
	
	String name;
	int price;
	int fresh;
	
	public void show() {
		System.out.println("과일 이름: " + name);
		System.out.println("과일 가격: " + price);
		System.out.println("과일 신선도: " + fresh);
	}
}
