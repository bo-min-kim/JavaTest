package aopexam.sample04;

import org.springframework.stereotype.Component;

@Component("myboard")
public class BoardPet implements Board {

	@Override
	public void board() {
		String msg = "PetShop 게시물을 주문합니다.";
		System.out.println(msg);
	}

}
