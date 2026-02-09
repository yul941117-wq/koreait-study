package chapter09;

public class Ex01 {
	public static void main(String[] args) {
		//회원의 정보를 저장하고 싶다
		
	Member m1 = new Member("id1","pw1","010-1111-1111");
	Member m2 = new Member("id2","pw2","010-1111-1111");
	Member m3 = new Member("id3","pw5","010-1111-1111");
	
	//Member 클래스안에 들어있는  메서드를 호출해서
	//m1,m2,m3에 들어 있는 회원 정보를 출력
	m1.printMemberInfo();
	m2.printMemberInfo();
	m3.printMemberInfo();
	}
}
