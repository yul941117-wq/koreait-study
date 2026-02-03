package kr.co.training;

public class Ex20_3_MemberInfo {

	// - private 변수 name,age,addr,isStudent를 가집니다.
	// - isStudent는 boolean
	// - getter/setter
	
	private String name;
	private int age;
	private String  addr;
	private boolean isStudent;
	
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setaddr(String addr) {
		this.addr = addr;
	}
	public void setisStudent(boolean isStudent) {
		this.isStudent =isStudent;
	}
	
	public String getName( ) {
		return name;
	}
	public int getAge() {
		return age;
	}
	public String getaddr() {
		return addr;
	}
	public boolean getisStudent() {
		return isStudent;
		
	}
}
