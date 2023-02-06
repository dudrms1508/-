package ch04;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet2
 */
@WebServlet("/CalcServlet2")
public class CalcServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		// get 으로 받아도 'dopost' 방식으로 요청
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num1, num2;
		int result;
		String op;
		
		response.setContentType("text/html; charset=UTF-8");
		// 서블릿에서 브라운저로 뭔가 전송하게 위해 사용 
		PrintWriter out = response.getWriter();
		// HttpServlet 입력한 값을 저장
		
		num1 = Integer.parseInt(request.getParameter("num1"));
		// request 는 요청하기 위해 사용
		// Integer.parseInt : getParameter 에서 받은 문자열을 정수형으로 바꿔주는  래퍼클래스 
		num2 = Integer.parseInt(request.getParameter("num2"));
		
		op = request.getParameter("operator");
		
		Calc calc = new Calc(num1, num2, op);
		
		result = calc.getResult();
		
		request.setAttribute("result", result);
		//일반 자료형이 될 수 있고 객체를 추가할수있다.
		
		RequestDispatcher view =
				request.getRequestDispatcher("/ch04/calcResult.jsp");
		//view 페이지를 실행시키기 위하여 실행 순서를 이동하기 위한 객체 ( RequestDispatcher )
		// view 의 이름 지정 (65) 
		view.forward(request, response);
		// 실행 순서가 view 로 이동. 
	}

}
