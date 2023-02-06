package ch07;

public class LoginBean {
	
	//사용자로 부터 입력받은 아이디와 비밀번호 저장
	
	private String userid;
	private String passwd;
	
	//DB로부터 가져온 아이디와 비밀번호로 가정함
	final String _userid="myuser";
	final String _passwd="1234";
	
		
	public LoginBean(String userid, String passwd) {
		super();
		this.userid = userid;
		this.passwd = passwd;
	
	}
	
	//private로 만들어진 것은 외부에서 get 과 set 으로 접근 가능함 멤버변수의 시작이름은 대문자로 생성
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		System.out.println("getUserid()");
		//매개변수를 갖고있는 생성자가 존재하면 반드시 기본 생성자가 존재해야한다. (빈즈클래스의 특징)
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public LoginBean() {
		System.out.println("LoginBean()");
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
