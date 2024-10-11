package com.semi.admin.member.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.semi.member.service.MemberService;
import com.semi.member.service.MemberServiceImpl;

public class AdminMemberDeleteController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private MemberService memberService = new MemberServiceImpl();
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberDeleteController() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
     // 요청에서 삭제할 회원 아이디를 가져오기
        String[] memberIds = request.getParameterValues("memberId");
        
        if (memberIds != null) {
            // 각 회원에 대해 삭제 작업 진행
            for (String memberId : memberIds) {
                memberService.deleteMember(memberId);
            }
        }
        // 삭제 완료 후 회원 목록 페이지로 리다이렉트
        response.sendRedirect(request.getContextPath() + "/memberdel.do");
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }

}
