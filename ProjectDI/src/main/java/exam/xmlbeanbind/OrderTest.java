package exam.xmlbeanbind;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class OrderTest {

	//xml을 이용한 Bean 묶기
	public static void main(String[] args) {
		String configLocation = "/exam/xmlbeanbind/xmlbeanbind.xml";
		
		ApplicationContext context
		= new ClassPathXmlApplicationContext(configLocation);
		
		// System.out.println(context.toString());

		Service service = (Service)context.getBean("hohoho");
		System.out.println("주문합니다.");
		service.order();
		System.out.println("-------------------------");
		System.out.println("주문 취소합니다..");
		service.cancel();
	}

}
