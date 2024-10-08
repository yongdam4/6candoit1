package com.semi.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.semi.member.model.vo.Member;
import com.semi.member.service.MemberService;
import com.semi.member.service.MemberServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminMemberManagement extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private MemberService memberService = new MemberServiceImpl();
       
    public AdminMemberManagement() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Member> memberList = memberService.getAllMembers();
        System.out.println("조회된 회원 수: " + memberList.size()); // 디버깅용

        //회원 정보를 request 객체에 담아 JSP로 전달
        if (memberList == null) {
            memberList = new ArrayList<>();
        }
        request.setAttribute("memberList", memberList);

        // JSP 페이지로 포워딩
        request.getRequestDispatcher("/views/jsp/MemberManagement.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
