package com.semi.member.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.semi.member.model.vo.Member;
import com.semi.member.service.MemberServiceImpl;

/**
 * Servlet implementation class MemberInsertController
 * @param <date>
 */
public class MemberInsertController<date> extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member m = new Member(
					request.getParameter("userId"),
					request.getParameter("userPwd"),
					request.getParameter("userName"),
					request.getParameter("gender"),
					request.getParameter("email"),
					request.getParameter("address"),
					request.getParameter("phone"),
					request.getParameter("birthday")
				);
		
		int result = new MemberServiceImpl().insertMember(m);
		
		if(result > 0) {
			request.setAttribute("alertMsg", "회원가입에 성공하셨습니다!");
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("errorMsg", "회원가입 실패");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
