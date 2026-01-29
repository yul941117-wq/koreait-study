package kr.co.training;

import java.util.Scanner;

public class Ex04_switch {

	public static void main(String[] args) {
		// siwtch문
		//	- 특정 변수의 값이 일치하면(==) 코드를 실행하는 조건문
		int num = 2;
		
		switch(num) {
		case 1:
			System.out.println("num은 1입니다.");
			break;
		case 2:
			System.out.println("num은 2입니다.");
			break;
		default:
			System.out.println("num은 1도 2도 아닙니다.");
		}
		
		String name = "고뉼리";
		
		switch(name) {
		case "고야밍":
			System.out.println("고야밍님 안뉴하세유.");
			break;
		case "고뉼리":
			System.out.println("고뉼리님 안뉴하세유.");
			break;
		}
			
		Scanner sc = new Scanner (System.in);
		
		System.out.println("메뉴선택.");
		System.out.println("1.아이스아메리카노");
		System.out.println("2.카페라떼");
		System.out.println("3.스무디");
		
		int choice = sc.nextInt();
		switch(choice) {
		case 1:
			System.out.println("아이스아메리카노를 선택하셨습니다.");
			break;
		case 2:
			System.out.println("카페라떼를 선택하셨습니다.");
			break;
		case 3:
			System.out.println("스무디를 선택하셨습니다");
			break;
		default:
			System.out.println("그런거 없음");
		}
		
		System.out.print("요일 입력 : ");
		int day = sc.nextInt();
		
		switch(day) {
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
			System.out.print("평일 입니다.");
			break;
		case 6:
		case 7:
			System.out.print("주말 입니다.");
			
		}
		
		
		
		
		
	}
}


