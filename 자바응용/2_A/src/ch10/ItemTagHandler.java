package ch10;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ItemTagHandler extends SimpleTagSupport {

	//태그 속성 처리를 위한 멤버 변수
	private String border;
	private String bgcolor;
	
	//시작 태그를 알려주는 호출 되는 메 서 드 .
	public void doTag() throws IOException, JspException{
		// getJspContext() : 출력을 위한 JspContext() 객체 획득		
		JspWriter out = getJspContext().getOut();
		//태그 바디를 가져오는 부분
		JspFragment body = getJspBody();
		
		// 스트링 버퍼를 이용해 상품정보 출력을 위한 태그 구성
		Product product = new Product();
		StringBuffer msg = new StringBuffer();
		if(body != null) {
			out.println("<H2>");
			body.invoke(null);
			//태그 몸체를 읽은 후 응답에 출력하라는 의미
			out.println("</H2>");
		}
		
		//테이블 태그 구성(문자열 처리 기능 상향을 위해 StringBuffer 기능 사용 )
		msg.append("<table border=")
		.append(border)
		.append(" bgcolor=")
		.append(bgcolor)
		.append(" width=150>");
		
		out.println(msg.toString());
		//상품 목록 출력
		for(String item : product.getProductlist())
		//String 타입의 배열이 반환
		{
			out.println("<tr><td>" +item+ "</td></tr>");
		}
		out.println("</table>");
	}
	public String getBgcolor() {
		return bgcolor;
	}
	public void setBgcolor(String bgcolor) {
		this.bgcolor = bgcolor;
	}
	public String getBorder() {
		return border;
	}
	public void setBorder(String border) {
		this.border = border;
	}
	
	

	
}
