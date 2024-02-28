package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04Lunch
 */
@WebServlet("/Ex04Lunch")
public class Ex04Lunch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Random rd = new Random();
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		// 한식 리스트
		String[] kList = {"그냥집밥","풍남옥","해뜨는집","좋은국밥","신신식당","설농탕"};
		// 중식 리스트
		String[] cList = {"1515", "황금성","말리화","열도지"};
		// 일식 리스트
		String[] jList = {"쿠로시로","마시타라멘","바른초밥","공초밥","카레카레"};
		
		String lunch = request.getParameter("lunch");
		if(lunch.equals("한식")) {
			out.print(kList[rd.nextInt(kList.length)]);
		}	
		else if(lunch.equals("중식")) {
			out.print(cList[rd.nextInt(cList.length)]);
		}
		else if(lunch.equals("일식")) {
			out.print(jList[rd.nextInt(jList.length)]);
		}
		
		
		
		
	}

}
