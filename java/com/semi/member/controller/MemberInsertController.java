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
 */
public class MemberInsertController extends HttpServlet {
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
		
		String userId = request.getParameter("userId");
	    String userPwd = request.getParameter("userPwd");
	    String userName = request.getParameter("userName");
	    String gender = request.getParameter("gender");
	    String email = request.getParameter("email");
	    String address = request.getParameter("address");
	    String phone = request.getParameter("phone");
	    String birthday = request.getParameter("birthday");

	    // 입력 값 출력
	    System.out.println("UserId: " + userId);
	    System.out.println("UserPwd: " + userPwd);
	    System.out.println("UserName: " + userName);
	    System.out.println("Gender: " + gender);
	    System.out.println("Email: " + email);
	    System.out.println("Address: " + address);
	    System.out.println("Phone: " + phone);
	    System.out.println("Birthday: " + birthday);
	    
	    Member m = new Member(userId, userPwd, userName, gender, email, address, phone, birthday);
		
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
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
	    String userPwd = request.getParameter("userPwd");
	    String userName = request.getParameter("userName");
	    String gender = request.getParameter("gender");
	    String email = request.getParameter("email");
	    String address = request.getParameter("address");
	    String phone = request.getParameter("phone");
	    String birthday = request.getParameter("birthday");

	    // 입력 값 출력
	    System.out.println("UserId: " + userId);
	    System.out.println("UserPwd: " + userPwd);
	    System.out.println("UserName: " + userName);
	    System.out.println("Gender: " + gender);
	    System.out.println("Email: " + email);
	    System.out.println("Address: " + address);
	    System.out.println("Phone: " + phone);
	    System.out.println("Birthday: " + birthday);
	    
	    Member m = new Member(userId, userPwd, userName, gender, email, address, phone, birthday);
		
		int result = new MemberServiceImpl().insertMember(m);
		
		if(result > 0) {
			request.setAttribute("alertMsg", "회원가입에 성공하셨습니다!");
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("errorMsg", "회원가입 실패");
		}
	}

}
