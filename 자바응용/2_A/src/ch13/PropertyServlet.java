package ch13;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PropertyServlet
 */
// @WebServlet("/PropertyServlet") //해당 클래스는 서블릿이다 라고 지정 
public class PropertyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
/* JSP 3.0 이상에서 사용 가능 ( web.xml에서 서블릿 설정 안했을 경우
 * 서블릿 선언 에너테이션
 * @WebServlet( //서블릿 호출 URL 지정
 * 	urlPatterns = { "/PropertyServlet" },
 * 서블릿 초기화 파라미터 지정
 initParams = { @WebInitParam(name = "name1", value = "user1"),
		 @WebInitParam(name = "name2", value = "user2"),
 }
 이 방법은 잘 사용 안함
 */
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String encoding = 
				getServletContext().getInitParameter("encoding");
				//getServletContext를 이용하면 서블릿컨텍스트타입의 객체를 획득
		response.setCharacterEncoding(encoding);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html); charset=UTF-8");
		out.println("<HTML><BODY><CENTER>");
		out.println("<h2>ch14:PropertyServlet</h2>");
		out.println("<hr>");
		//서블릿 초기화 파라미터로 전달된 값 출력;
		
		out.println("name1 : "+
				getServletConfig().getInitParameter("name1") +"<br>");
		out.println("name2 : "+ getInitParameter("name2"));
		//name1 과 name2 는 결과는 동일하지만 아래거 사용하면 쳐맞음(가동성 상향 시키기 위해 위에꺼 사용)
		
		out.println("<hr>");
		//웹 어플리케이션 초기화 파라미터로 전달된 값 출력
		
		out.println("name3 : "+
				getServletContext().getInitParameter("name3"));
		out.println("</center><body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
