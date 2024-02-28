package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex06BgColor
 */
@WebServlet("/Ex06BgColor")
public class Ex06BgColor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String color = request.getParameter("color");
		String fdan = request.getParameter("fdan");
		String ldan = request.getParameter("ldan");
		response.setCharacterEncoding("EUC-KR");

		System.out.println(fdan);
		PrintWriter out = response.getWriter();

		out.print("<html> <title>구구단</title> <meta charset='EUC-KR'>");
//		out.print("<body bgcolor ='"+color+"'>"); color라는 변수를 사용하기위해 큰따옴표로 공백을만들어줌
		out.print("<body>");
		out.print("<table align='center' border='1px solid black' bgcolor='" + color + "'>");

		for (int i = Integer.parseInt(fdan); i <= Integer.parseInt(ldan); i++) {
			out.print("<tr>");
			for (int j = 1; j <= 9; j++) {

				out.print("<td>" + i + "*" + j + "=" + i * j + "</td>");
				
			}
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}	
