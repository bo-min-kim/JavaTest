package basic_test.inheritance;

class Tv{
	// 부모의 멤버는 5개
	boolean power; // 전원상태(on/off)
	int channel; // 채널
	
	void power() {power =! power;}
	void channelUp() {++channel;}
	void channelDown() {--channel;}
	
}

class SmartTv extends Tv { // SmartTv Tv에 자막을 보여주는 기능
	
	// 자식멤버 2개 부모멤버 5개
	// SmartTv 에 멤버는 총 7개
	boolean caption;
	
	void displayCaption(String text) {
		if(caption) {
			System.out.println(text);
		}
	}
}

class LgTv extends Tv { // SmartTv Tv에 자막을 보여주는 기능
	
	// 자식멤버 2개 부모멤버 5개
	// SmartTv 에 멤버는 총 7개
	boolean caption;
	
	void displayCaption(String text) {
		if(caption) {
			System.out.println(text);
		}
	}
}

class SamsungTv extends Tv { // SmartTv Tv에 자막을 보여주는 기능
	
	// 자식멤버 2개 부모멤버 5개
	// SmartTv 에 멤버는 총 7개
	boolean caption;
	
	void displayCaption(String text) {
		if(caption) {
			System.out.println(text);
		}
	}
}

public class inheritanceEx2 {
	
	public static void main(String[] args) {
		
		SmartTv stv = new SmartTv();
		
		// 자식클래스의 멤버는 사용할 수 없다.(2개)
		// 부모클래스의 멤버만 사용할 수 있다.(5개)
		Tv t1 = new SmartTv();
		Tv t2 = new LgTv();
		Tv t3 = new SamsungTv();
		
		SmartTv t4 = new SmartTv();
		
		stv.channel = 10;
		stv.channelUp();
		System.out.println(stv.channel);
		stv.displayCaption("안녕하세요");
		stv.caption = true;
		stv.displayCaption("반갑습니다");
	}

}