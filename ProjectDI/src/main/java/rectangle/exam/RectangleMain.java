package rectangle.exam;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class RectangleMain {

	public static void main(String[] args) {
		String configLocation = "rectangle/exam/applicationContext.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(configLocation);
		
		// 강등
		Rectangle rectangle = (Rectangle)context.getBean("rectangleBean");	
		rectangle.Print();
		rectangle.Diagonal();
		System.out.println();
		
		Rectangle sadari = (Rectangle)context.getBean("sadari");
		sadari.Print();
	}

}
