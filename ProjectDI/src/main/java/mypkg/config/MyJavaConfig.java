package mypkg.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration // 이 클래스를 설정 파일로 사용할께요
public class MyJavaConfig {
	
	// 메소드 (Member = 메소드의 반환타입 -> 객체 (spring에서는 bean이라고 한다.)
	@Bean // 저는 이름이 myuser라고 불러 주세요.
	public Member myuser() {
		return new Member("hong", "홍길동", 30);
	}
	
	@Bean 
	public Member youruser() {
		return new Member("park", "박영희", 20);
	}
	
	@Bean(name = "renamechoi")
	public Member choi() {
		return new Member("choi", "최영", 2000);
	}
	
	@Bean
	public List<Member> allList(){
		List<Member> lists = new ArrayList<Member>();
		lists.add(myuser());
		lists.add(youruser());
		lists.add(choi());
		return lists;
	}

}
