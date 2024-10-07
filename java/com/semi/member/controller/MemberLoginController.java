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
		
        String adminId = request.getParameter("adminId");
        String adminPwd = request.getParameter("adminPwd");

        // 관리자 아이디와 비밀번호를 확인
        if ("admin".equals(adminId) && "1234".equals(adminPwd)) {
            Member m = new Member();
            m.setUserId(adminId);
            m.setUserPwd(adminPwd);

            // 로그인 성공 시 세션에 사용자 정보 저장
            request.getSession().setAttribute("loginUser", m);

            // 로그인 성공 시 MemberManagement.jsp로 리다이렉트
            response.sendRedirect(request.getContextPath() + "/views/jsp/MemberManagement.jsp");
        } else {
            // alert() 메시지 생성 후 AdminLoginPage.jsp로 포워딩
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('로그인에 실패하였습니다.'); location.href='" + request.getContextPath() + "/views/jsp/AdminLoginPage.jsp';</script>");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
