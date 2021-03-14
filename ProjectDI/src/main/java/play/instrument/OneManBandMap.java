package play.instrument;

import java.util.Map;

// 이 클래스는 컬렉션 Map을 위한 메소드입니다.
public class OneManBandMap implements Performer {
	// 연주할 목록을 저장할 맵 자료형
	private Map<String, Instrument>abcd;
	
	// setter injection을 위한 메소드입니다.
	public void setCcc(Map<String, Instrument> instrument) {
		// 매개 변수 이름과 변수 이름이 달라도 상관 없습니다.
		this.abcd = instrument;
	}
	
	@Override
	public void perform() {
		System.out.println("맵 구조를 반복하여 악기들을 연주합니다.");
		for(String key : abcd.keySet()) {
			Instrument inst = abcd.get(key);
			System.out.println(key + " : ");
			inst.play();
		}
	}	
}
