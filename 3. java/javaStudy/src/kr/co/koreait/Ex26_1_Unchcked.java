package kr.co.koreait;

public class Ex26_1_Unchcked {
	public static void main(String[] args) {
		
		try {
			ExceptionTest.uncheckedMethod();
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("예외 발생!");
		}

	}
}

class ExceptionTest {
	public static void uncheckedMethod() {
	// UncheckedException (선택 예외)
	//  -throws 를 작성하지 않아도 UncheckedException 은 예외가 자동 전파되서 catch문 실행.
		throw new ArrayIndexOutOfBoundsException();
	}
}
