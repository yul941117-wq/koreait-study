package chapter08;

public class Sample02 {
	public static String q1(int su1) {
 
		if(su1%2 == 0) {
			return "짝수";
		}
		else{
			return "홀수";
		}
		
	 }

	 int q2(int su2) {
		int sum = 0;
		for(int i = 1;i<su2;i++) {
			
			if(i%2 == 0) {
				sum = sum+i;
			}
			
			
			
		}
		
		return sum;
		
	}
	
	ScoreInfo q3(int kor,int eng,int mat) {
		int total = kor+eng+mat;
		double avg = total/(double)3;
		
		ScoreInfo s = new ScoreInfo();
		s.total = total;
		s.avg = avg;
		
		return s ;
	}
	
	
	
	
	
	
	
}
