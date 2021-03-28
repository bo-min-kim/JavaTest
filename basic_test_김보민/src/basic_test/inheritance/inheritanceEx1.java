package basic_test.inheritance;

/*
 * 상속 : 코드의 재사용
 * 		두개의 클래스를 서로 부모와 자식사이로 맺어주는 것.
 * 		자식클래스 extends 부모클래스 {}
 * 
 * class Parent {}
 * class Child extends Parent{}
 * 
 * 자손은 조상의 모든 멤버를 상속받는다.(생성자, 초기화 블록 제외)
 * 자손의 멤버 개수는 조상보다 적을 수가 없다.(같거나 많다.)
 * 
 * class Parent{
 * 	int age;
 * }
 * 
 * class Child extends Parent {}
 * 
 * 자바는 단일 상속만 허용된다. 두개의 조상을 모실수가 없음. C++ 은 다중상속이 허용된다.
 * 두개를 상속 받았을때는 같은 메서드 이름이 존재한다면 무엇을 상속받을지 모르기 때문에
 * 따라서 비중이 높은 클래스 하나는 상속, 나머지 하나는 포함 관계로 된다.
 * 
 */
