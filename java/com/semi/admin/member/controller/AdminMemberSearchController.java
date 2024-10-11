package com.semi.admin.member.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.semi.member.model.vo.Member;
import com.semi.member.service.MemberService;
import com.semi.member.service.MemberServiceImpl;

import java.io.IOException;
import java.util.List;


public class AdminMemberSearchController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private MemberService memberService = new MemberServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
     // 검색 조건과 검색어 가져오기
        String searchType = request.getParameter("searchType");  // 회원명, 아이디, 회원등급
        String searchText = request.getParameter("searchText");  // 검색어
        
        List<Member> searchResults = null;

        // 검색 타입에 따라 회원명 또는 아이디 검색
        if ("회원명".equals(searchType)) {
            searchResults = memberService.searchMembersByName(searchText);
        }else if ("아이디".equals(searchType)) {
            searchResults = memberService.searchMembersById(searchText);
        }else if ("회원등급".equals(searchType)) {
            searchResults = memberService.searchMembersByGrade(searchText);
        }
        
        // 검색 결과를 request에 저장하고 JSP로 전달
        request.setAttribute("memberList", searchResults);
        request.getRequestDispatcher("/views/jsp/MemberManagement.jsp").forward(request, response);
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
