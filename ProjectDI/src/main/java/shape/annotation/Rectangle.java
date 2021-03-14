package shape.annotation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("myRectangle")
public class Rectangle implements Shape{
	
	// required = true는 반드시 해주셔야 합니다.
	@Autowired(required = true) // 이 변수는 반드시 주입해주셔야 합니다.
	@Qualifier("myRectangleDao") // ShapeDao 타입 중에서 이름이 "myRectangleDao"인 항목을 찾아 주세요.
	// shapeDao는 외부에서 주입되어야 합니다.
	private ShapeDao shapeDao; // for  약한 결합
	
	@Override
	public Object GetShapeOne() {
		return this.shapeDao.GetShapeOne();
	}

	@Override
	public List<Object> GetAllShape() {
		return this.shapeDao.GetAllShape();
	}

}
