package rectangle.exam;

public class Sadari implements Rectangle {
	private int base_lower; // 밑변 길이
	private int base_upper; // 윗변 길이
	private int height; // 높이
	
	public Sadari(int base_lower, int base_upper, int height) {
		this.base_lower = base_lower;
		this.base_upper = base_upper;
		this.height = height;
	}

	@Override
	public void Print() {
		double result = (base_lower + base_upper) / 2 * height;
		System.out.println("사다리꼴의 넓이 : " + result);
	}

	@Override
	public void Diagonal() {
		
	}

}
