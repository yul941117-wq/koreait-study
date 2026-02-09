package chapter08;

public class Ex02 {
	public static void main(String[] args) {
		Sample02 s2= new Sample02();
		System.out.println(s2.q2(10));
		
		int total =s2.q3(12,30,40).total;
		
		double avg = s2.q3(12,30,40).avg;
		
		
		System.out.println(total);
		
		System.out.println(avg);
		
	}
}
