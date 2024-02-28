package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex02Request
 */
@WebServlet("/Ex02Request")
public class Ex02Request extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String ip = request.getRemoteAddr();
		response.setCharacterEncoding("EUC-KR");
		
		PrintWriter out = response.getWriter();
		
	 	out.print("<html>");
	 	out.print("<body>");
	 	if(ip.equals("127.0.0.1")) {
	 		out.print("누구님 반가워요");
	 	} else if(ip.equals("192.0.0.1")) {
	 		out.print("누구님 반가워요");
	 	} else {
	 		out.print("손님 반가워요");
	 	}
	 	out.print("</html>");
	 	out.print("</body>");
		
	}

}
