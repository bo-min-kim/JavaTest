package mycomputer;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ComputerMain {
	public static void main(String[] args) {
		// mycomputer 패키지 안에 computer.xml 이라는 파일이 존재해야 합니다.
		// xml 파일을 스프링 설정 파일이라고 부르겠습니다.
		// 교안 95~97쪽
		String configLocation = "mycomputer/computer.xml" ;
		ApplicationContext context = new ClassPathXmlApplicationContext( configLocation ) ;
		System.out.println(context.toString());
		
		// 강등
		Computer mycom = (Computer)context.getBean("computer") ;
		System.out.println(mycom.toString());
		System.out.println();
		Programmer soo = (Programmer)context.getBean("programmer") ;
		System.out.println(soo.toString());
	}
}