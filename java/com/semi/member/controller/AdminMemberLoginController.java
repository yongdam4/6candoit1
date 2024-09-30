package com.semi.member.controller;

import java.io.IOException;

import com.semi.member.model.vo.Member;
import com.semi.member.service.MemberService;
import com.semi.member.service.MemberServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminMemberLoginController
 */

public class AdminMemberLoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberLoginController() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//System.out.println("연결 성공"); 연결되는지 테스트 용
    	//1) 전달값에 한글이 있을 경우 인코딩 처리
    	request.setCharacterEncoding("UTF-8");
    	
    	Member m = new Member();
    	m.setUserId(request.getParameter("userId"));
    	m.setUserPwd(request.getParameter("userPwd"));
    	
    	String path = request.getParameter("path");
    	
    	MemberService memberService = new MemberServiceImpl(); 
		Member loginUser = memberService.adminloginMember(m);
		
		if(loginUser != null) {
			request.getSession().setAttribute("loginUser", loginUser);
			response.sendRedirect(request.getContextPath());
		} else {
			//로그인 실패 시 alertmsg로 로그인 실패했습니다라고 띄우기
		}	
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }
}
