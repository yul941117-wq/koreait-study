package kr.co.koreait;

public class Ex14_Overloading {
	
	public static void main(String[] args) {
		// 오버로딩 (Overloading)
		//	- 같은 메서드 이름을 사용하지만 매개변수의 타입(자료형)과 위치가 다른 방식
		
		// 객체 생성
		//  - 클래스명 변수명 = new 클래스명();
		Ex14_Overloading ol = new Ex14_Overloading();
		
		// 메서드 호출
		//  - 변수명.메서드명();
		ol.introduce("김재섭");
		ol.introduce("홍길동", "19");
		ol.introduce("19", "홍길동");
		
		Ex14_1_Calc calc = new Ex14_1_Calc();
		calc.add(10, 20);
	}
	
	public void introduce(String name) {
		System.out.println("안녕하세요. 제 이름은 " + name + "입니다.");
	}
	
	public void introduce(String name, String age) {
		System.out.println("이름 : " + name + ", 나이 : " + age);
	}

}









