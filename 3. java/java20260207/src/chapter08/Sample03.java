package chapter08;

public class Sample03 { 
	
	void func1(int param) {
		param = param + 1;
		System.out.println("func1 메서드 내 param = "+param);
	}
	
	void func2(int[] param) {
		param[0] = param[0]+1;//
		System.out.println("func2 메서드 내 param[0]"+param);
	}
	// 매개변수의 타입이 기본 데이터 타입인 메서드
	
	// 매개변수의 타입이 참조데이터 타입인 메서드
}
