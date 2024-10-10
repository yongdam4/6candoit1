package com.semi.admin.member.controller;

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
public class AdminMemberLoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AdminMemberLoginController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Member m = new Member();
        m.setUserId(request.getParameter("adminId"));
        m.setUserPwd(request.getParameter("adminPwd"));

        MemberService memberService = new MemberServiceImpl();
        Member loginUser = memberService.loginMember(m);

        // 로그인 성공 시 사용자 정보를 세션에 저장하고 MemberManagement.jsp로 리다이렉트
        if (loginUser != null && loginUser.getUserId().equals(m.getUserId()) && loginUser.getUserPwd().equals(m.getUserPwd())) {
            request.getSession().setAttribute("loginUser", loginUser);
            response.sendRedirect(request.getContextPath() + "/memberdel.do");
        } else {
            // 로그인 실패 시 alert 메시지 후 AdminLoginPage.jsp로 포워딩
            request.setAttribute("loginError", "로그인에 실패하였습니다."); // 로그인 실패 메시지
            request.getRequestDispatcher("/views/jsp/AdminLoginPage.jsp").forward(request, response);
        }
    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}