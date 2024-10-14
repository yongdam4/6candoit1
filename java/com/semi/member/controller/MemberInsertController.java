package com.semi.member.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
		System.out.println("MemberInsertController - doPost called");
		
		String userId = request.getParameter("userId");
	    String userPwd = request.getParameter("userPwd");
	    String userName = request.getParameter("userName");
	    String gender = request.getParameter("gender");
	    String email = request.getParameter("email");
	    String address = request.getParameter("address");
	    String phone = request.getParameter("phone");
	    String birthday = request.getParameter("birthday");
	    
//		Member m = new Member(
//								request.getParameter("userId"),
//								request.getParameter("userPwd"),
//								request.getParameter("userName"),
//								request.getParameter("gender"),
//								request.getParameter("email"),
//								request.getParameter("address"),
//								request.getParameter("phone"),
//								request.getParameter("birthday")
//							);
		
		// 디버깅용 출력
	    System.out.println("UserId: " + userId);
	    System.out.println("UserPwd: " + userPwd);
	    System.out.println("UserName: " + userName);
		
	    Member m = new Member(userId, userPwd, userName, gender, email, address, phone, birthday);
	    
		int result = new MemberServiceImpl().insertMember(m);
	    
	    System.out.println("Insert Result: " + result); // 트랜잭션 결과 로그		
		
		if(result > 0) {
			// 세션에 메시지 저장
		    HttpSession session = request.getSession();
		    session.setAttribute("alertMsg", "회원가입에 성공하셨습니다!");
		    
		    response.sendRedirect(request.getContextPath());  // sendRedirect 방식
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
