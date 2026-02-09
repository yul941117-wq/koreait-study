package chapter09;

public class Member {
	public String id;
	private String pw;
	protected String tel;
	
	public Member() {
		
	}
	
	Member(String id,String pw, String tel){

		this.id = id; // 첫번쨰 매개변수(id)가 전달 받은 값을 id멤버 변수에 저장
		this.pw = pw; // 두번쨰 매개변수가 전달 받은 값을 pw맴버 변수에 저장
		this.tel = tel;
	
	}
	
	void printMemberInfo(){
		//회원의 정보를 출력하는 코드
		System.out.println("id =" + id);
		System.out.println("pw =" + pw);
		System.out.println("tel =" + tel);
	}
}
