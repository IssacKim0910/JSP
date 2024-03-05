package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ex04AddPhoneList
 */
@WebServlet("/ex04AddPhoneList")
public class ex04AddPhoneList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 회원들의 연락처를 Session에 저장 후 ex04list.jsp로 이동
		
		// 연락처에 들어가는 정보 (이름, 나이, 번호, 주소)
		MemberDTO m1 = new MemberDTO("김동혁",20,"010-1111-1234","담양");
		MemberDTO m2 = new MemberDTO("김민학",20,"010-2222-1234","광주");
		MemberDTO m3 = new MemberDTO("박덕근",20,"010-3333-1234","광주");
		MemberDTO m4 = new MemberDTO("안현지",20,"010-4444-1234","광주");
		MemberDTO m5 = new MemberDTO("안영빈",20,"010-5555-1234","광주");
		MemberDTO m6 = new MemberDTO("박옥재",20,"010-6666-1234","광주");
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
		list.add(m5);
		list.add(m6);
		
		// Servlet에서 Session을 사용하는 방법
		// 세션 생성
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		// ex04list.jsp 페이지로 이동하기
		response.sendRedirect("ex04list.jsp");
		
		}

}
