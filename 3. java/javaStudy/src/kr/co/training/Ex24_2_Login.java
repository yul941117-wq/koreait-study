package kr.co.training;

public class Ex24_2_Login implements  Ex24_2_LoginInterface{
	String memberid = "id";
	String memberpwd ="qwer1234";

	@Override
	public String login(String id,String pwd) {
		if(!memberid.equals(id)) {
			return "아이디가 틀렸습니다"; 
		}
		if(!memberpwd.equals(pwd)) {
			return "비밀번호가 틀렸습니다";
		}
		return "로그인이 되었습니다.";
	}
}
