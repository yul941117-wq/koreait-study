package kr.co.training;

public class Ex02_for {

	public static void main(String[] args) {
		// 1. 짝수를 출력하는 for문
		//	- 범위 : 1~20
		//	- 해당 범위 안에 있는 짝수만 출력
		for(int i=1; i<=20; i++) {
			if(i % 2==0)
			System.out.println(i);
		}
		
		
		// 2. 3과 5의 공배수를 출력하는 for문
		//	- 범위 : 1~100
		// 99 % 3 ==0 3의 배수, 15 %5 ==0 3의 배수 둘다 true여야 함
		for(int i=1; i<101; i++) {
			if(i % 3==0 && i % 5==0)
				System.out.println(i);
				 
		}
		

		// 3. 10 팩토리얼의 값을 출력하는 for문
		//	- 10 팩토리얼 = 1*2*3*4*5*6*7*8*9*10
		//	- 깂 : 3628800 구해지면 됨.
		int a = 1;
		for(int i=1; i<11; i++) {
			a*=i;
			System.out.println(a);

		} 
		
		// 4. 아래의 별찍기를 구현하세요.
		//	*
		//	**
		//	***
		//	****
		//	*****
		
		

	
		// 2단부터 9단까지 출력하는 구구단 프로그램 만들기
		//	-출력값 : "2*2=2" "2*2=4 ... "2*9=18
		for(int i=2; i<10; i++) {
			for(int j=1; j<10; j++) {
				System.out.printf("%d *%d = %d\n", i, j, i*j );
			}
		}
		
	
}
}
