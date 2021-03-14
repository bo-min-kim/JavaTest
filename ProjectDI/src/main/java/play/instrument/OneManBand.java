package play.instrument;

import java.util.Collection;

public class OneManBand implements Performer {
	private Collection<Instrument> abcd;
	
	// setter injection을 위한 메소드입니다.
	public void setAaa(Collection<Instrument> instrument) {
		// 매개 변수 이름과 변수 이름이 달라도 상관 없습니다.
		this.abcd = instrument;
	}
	
	@Override
	public void perform() {
		System.out.println("확장 for를 이용하여 악기들을 연주합니다.");
		for(Instrument inst : abcd) {
			inst.play();
		}
	}
	
}
