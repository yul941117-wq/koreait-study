package kr.co.koreait;

import java.util.Scanner;

public class Ex13_Method {

	public static void main(String[] args) {
		// 메서드
		//	- 정의된 동작이나 기능을 수행
		
		// 객체 생성(=인스턴스화)
		//	- 코드를 메모리에 올리는 과정
		//	- 클래스명 변수명 = new 클래스명();
		Ex13_Method m = new Ex13_Method();
		String result = m.printHello("안녕하세요 저는 홍길동입니다.");
		
		System.out.println(result);
		
		
		int[] numbers = {100, 200, 300, 400};
		
		Ex13_1_Calc calc = new Ex13_1_Calc();
		int add = calc.add(1, 2);
		int sum = calc.sub(numbers);
 
		System.out.println(add);
		
		Ex13_3_BankAccount bank = new Ex13_3_BankAccount();
		bank.deposit(10000);
		bank.withdraw(3500);
		String check = bank.checkBalance();
		System.out.println(check);
		
		System.out.println(bank.checkBalance());
 	}
	
	// 안녕하세요 출력하는 메서드
	// public 반환타입 메서드명(자료형 매개변수명) {   }
	//	- 반환 타입의 종류 : void, int, String, int[], ArrayList<>, ...
	//	- void : 반환 타입 없음(return 없음)
	public String printHello(String str) {
		System.out.println(str);
		return "잘 출력되었습니다.";
	}
 
}






