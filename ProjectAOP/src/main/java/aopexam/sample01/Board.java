package aopexam.sample01;

public class Board {
	String  msg = "게시물 등록";
	
	public void board() {
		// 사전에 실행해야할 공통 기능(Aspect)
				System.out.println(msg + "을 위한 로그인을 수행합니다.");
				
				System.out.println(msg + "하기"); // 핵심 기능

				// 사후에 실행해야할 공통 기능(Aspect)
				System.out.println(msg + " 내역을 데이터베이스에 저장합니다.");
				System.out.println(msg + "을 위한 로그아웃을 수행합니다.");
			}
}
