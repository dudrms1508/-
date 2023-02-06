package ch11;

public class Member {

	
	//회원 정보 멤버 변수
	private String name;
	private String email;
	

	
	

	//기본 생성자인 경우 다음과 같이 신규 정보로 초기화
	public Member() {
		name="홍길동";
		email="test@test.net";
				
	}	
	
	public Member(String name, String email) {
		super();
		this.name = name;
		this.email = email;
	}




	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
