package ch10;

import java.io.IOException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MsgTagSimpleHandler extends SimpleTagSupport {
	
	//시작 태그를 만나면 호출되는 메서드
	public void doTag() throws IOException {
		JspWriter out = getJspContext().getOut();
		//getJspContext() 에서 out 객체를 얻기 위해 getOut() 사용
		// out 은 JspWriter 에 대한 참조 변수 
		out.println("커스텀 태그 출력 메시지 : Hello !");
		
	}
	
}
