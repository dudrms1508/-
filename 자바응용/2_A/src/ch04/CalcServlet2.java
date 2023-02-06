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
		// get ���� �޾Ƶ� 'dopost' ������� ��û
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
		// �������� �������� ���� �����ϰ� ���� ��� 
		PrintWriter out = response.getWriter();
		// HttpServlet �Է��� ���� ����
		
		num1 = Integer.parseInt(request.getParameter("num1"));
		// request �� ��û�ϱ� ���� ���
		// Integer.parseInt : getParameter ���� ���� ���ڿ��� ���������� �ٲ��ִ�  ����Ŭ���� 
		num2 = Integer.parseInt(request.getParameter("num2"));
		
		op = request.getParameter("operator");
		
		Calc calc = new Calc(num1, num2, op);
		
		result = calc.getResult();
		
		request.setAttribute("result", result);
		//�Ϲ� �ڷ����� �� �� �ְ� ��ü�� �߰��Ҽ��ִ�.
		
		RequestDispatcher view =
				request.getRequestDispatcher("/ch04/calcResult.jsp");
		//view �������� �����Ű�� ���Ͽ� ���� ������ �̵��ϱ� ���� ��ü ( RequestDispatcher )
		// view �� �̸� ���� (65) 
		view.forward(request, response);
		// ���� ������ view �� �̵�. 
	}

}
