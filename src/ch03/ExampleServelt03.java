package ch03;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch03/ExampleServelt03")
public class ExampleServelt03 extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 호출");
	}

	public void destroy() {
		System.out.println("destroy 호출");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service 호출");
	}

}
