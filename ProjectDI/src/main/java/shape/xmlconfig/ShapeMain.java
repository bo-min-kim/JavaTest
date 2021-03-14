package shape.xmlconfig;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ShapeMain {
	public static void main(String[] args) {
		String configLocation = "shape/xmlconfig/applicationContext.xml";
		
		ApplicationContext context 
			= new ClassPathXmlApplicationContext(configLocation);
		
		// Circle circle1 = (Circle)context.getBean("circle") ;		
		Circle circle2 = context.getBean(Circle.class) ;
		
		Object mycircle = circle2.GetShapeOne() ;
		System.out.println(mycircle.toString());
		System.out.println();

		List<Object> mycirclelist = circle2.GetAllShapes() ;
		System.out.println("도형 리스트");
		for(Object circle : mycirclelist) {
			System.out.println(circle.toString()); 
		}
		
		//추가 문제 : 사각형의 밑변과 높이와 면적을 구해주는 Rectangle 클래스를 구현해 보세요.
		System.out.println("=============================================");
		Rectangle shape2 = (Rectangle)context.getBean("rectangle") ;
		
		Object shapeBean2 = shape2.GetShapeOne() ;		
		System.out.println( "사각형의 정보 : " +  shapeBean2.toString() );	
		
		List<Object> shapeLists2 = shape2.GetAllShapes() ;
		//System.out.println( productLists.size() );
		System.out.println( "\n===사각형 목록 보기===" );	
		for(Object rect : shapeLists2 ){			
			System.out.println(rect);
		}
	}
}