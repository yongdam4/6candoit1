package com.semi.member.controller;

import java.io.IOException;

import com.semi.member.model.vo.Member;
import com.semi.member.service.MemberService;
import com.semi.member.service.MemberServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberLoginController
 */
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// 입력된 아이디와 비밀번호를 받음
		Member m = new Member();
		m.setUserId(request.getParameter("userId"));
		m.setUserPwd(request.getParameter("userPwd"));
		
		// 로그인 서비스 호출
		MemberService memberService = new MemberServiceImpl(); 
		Member loginUser = memberService.loginMember(m);
		
		System.out.println("입력된 ID: " + m.getUserId());
		System.out.println("입력된 비밀번호: " + m.getUserPwd());
		System.out.println("조회된 ID: " + (loginUser != null ? loginUser.getUserId() : "null"));
		System.out.println("조회된 비밀번호: " + (loginUser != null ? loginUser.getUserPwd() : "null"));
		
		if (loginUser != null) {
	        // 관리자 계정 확인
	        if ("admin".equals(loginUser.getUserId()) && "1234".equals(loginUser.getUserPwd())) {
	            request.getSession().setAttribute("loginUser", loginUser);
	            response.sendRedirect(request.getContextPath() + "/admin.do");
	            System.out.println("로그인 성공");
	        } else {
	            // 로그인 실패 시
	            response.setContentType("text/html; charset=UTF-8");
	            System.out.println("로그인 실패: 잘못된 자격 증명");
	            response.getWriter().print("<script>alert('로그인에 실패하였습니다.'); location.href='" + request.getContextPath() + "/views/jsp/AdminLoginPage.jsp';</script>");
	        }
	    } else {
	        // 로그인 실패: 사용자 없음
	        response.setContentType("text/html; charset=UTF-8");
	        System.out.println("로그인 실패: 사용자 없음");
	        response.getWriter().print("<script>alert('로그인에 실패하였습니다.'); location.href='" + request.getContextPath() + "/views/jsp/AdminLoginPage.jsp';</script>");
	    }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// POST 요청을 doGet으로 처리
		doGet(request, response);
	}
}
