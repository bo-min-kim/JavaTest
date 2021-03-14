package exam.xmlbeanbind;

// 서비스와 관련된 인터페이스
public interface Service {
	// 주문과 배송지 관련 접수 받기
	public void order();
	
	// 주문과 배송지 관련 접수 취소하기
	public void cancel(); 
}
