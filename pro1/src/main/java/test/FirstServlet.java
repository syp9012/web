package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//브라우저의 주소표시줄에 http://localhost/pro1/test
@WebServlet("/test")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	
	//서버가 닫힐때 실행
	@Override
	public void destroy() {
		System.out.println("destroy() 호출");
	}
	
	//맨 처음 1번만 호출 => 초기화(서버가 올라갈때 한번만 실행)
	@Override
	public void init() throws ServletException {
		System.out.println("init() 호출");
	}

	//get 방식 요청시 자동으로 매번 호출.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 호출");
		response.getWriter().append("**").append("Served at: ").append(request.getContextPath());
	}
	
	//post 방식 요청시 자동으로 호출
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost호출");
		doGet(request, response);
	}

}
