package shape.circle;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainShape {
	public static void main(String[] args) {
		// 스프링으로 풀어 보기
		// computer.xml 파일 복사해서 쓰기
		String configLocation = "shape/circle/shape.xml" ;
		ApplicationContext context = new ClassPathXmlApplicationContext( configLocation ) ;
		//System.out.println(context.toString());
		
		// 강등
		Circle aaa = (Circle)context.getBean("circle") ;
		System.out.println(aaa.toString() ); 
	
	}
}