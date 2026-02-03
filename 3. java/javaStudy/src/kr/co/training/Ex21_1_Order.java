package kr.co.training;

public class Ex21_1_Order {
	// number, amount, status 필드를 가집니다.
	//	- 접근제어자 : private
	//	- number, status는 문자열, amount는 실수형
	
	private int number;
	private double amount;
	private String status;
	
	// 필드 3개에 대한 getter/setter
	public int getnumber(int number) {
		return number;
	}
	public double getamount(double amount) {
		return amount;
	}
	public String getstatus(String statrs) {
		return status;
	}
		
	
	public void setnumber(int number) {
			this.number = number;
	}
	public void setamount(double amount) {
		if(amount < 100.0) {
				System.out.println("유효하지 않은 금액입니다.");
				this.amount = 0;
			}else if(amount >= 100) {
				System.out.printf("주문 번호 : %s, 주문 금액 :%f, 주문 상태 : %s",number,amount,status);
				this.amount = amount;
		}          
	public void setstatus(String status) {
				this.status = status;
		}
	

	
	//	- amount 필드의 setter에서 주문 금액이 100.0 미만일 경우
	//	"유효하지 않은 금액입니다."출력
	//	- 동일하게 amount 필드의 setter에서 주문 금액이 100.0 이상일 경우
	//	"주문 번호 : OOO, 주문 금액 : OOO, 주문 상태 : OOO"
	
	//주문 번호(number), 주문 금액(amount), 주문 상태(status)
	// ex) "ORKER3", 120.5, "결제완료"
	


        }
    }