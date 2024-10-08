package com.semi.admin.controller;

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

public class AdminMemberManagementController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private MemberService memberService = new MemberServiceImpl();
       
    public AdminMemberManagementController() {
        super();
        System.out.println("AdminMemberManagement 서블릿 초기화");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//실행테스트용
    	System.out.println("doGet 메소드 실행 시작");

        List<Member> memberList = memberService.getAllMembers();
        
        //디버깅테스트용
        if (memberList != null) {
            System.out.println("조회된 회원 수: " + memberList.size()); //회원수출력
            for (Member member : memberList) {
                System.out.println("회원 정보: " + member); //정보출력
            }
        } else {
            System.out.println("회원 목록이 없습니다.");
        }

        request.setAttribute("memberList", memberList);
        request.getRequestDispatcher("/views/jsp/MemberManagement.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}