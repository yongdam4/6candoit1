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
 * Servlet implementation class MemberLoginController
 */
public class MemberLoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public MemberLoginController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
		
		Member m = new Member();
		m.setUserId(request.getParameter("userId"));
		m.setUserPwd(request.getParameter("userPwd"));
		
		String path = request.getParameter("path");
		
		MemberService memberService = new MemberServiceImpl(); 
		Member loginUser = memberService.loginMember(m);
		
		System.out.println(loginUser);
		
		if(loginUser != null) {
			request.getSession().setAttribute("loginUser", loginUser);
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("errorMsg", "로그인 실패");
			request.getRequestDispatcher("views/jsp/AdminLoginPage.jsp").forward(request, response);
		}
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	doGet(request, response);
    }
}
