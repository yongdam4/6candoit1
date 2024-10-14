package com.semi.member.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
<<<<<<< HEAD

import java.io.IOException;
=======
>>>>>>> 3d220014bc2f811661a403b2856a3329f27bdfc2

/**
 * Servlet implementation class LogoutController
 */
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false); // 기존 세션이 없으면 null 반환
<<<<<<< HEAD
	    if (session != null) {
	        session.invalidate(); // 세션 무효화 (로그아웃 처리)
	    }
		
		response.sendRedirect(request.getContextPath()+"/index.jsp");
=======
	       if (session != null) {
	           session.invalidate(); // 세션 무효화 (로그아웃 처리)
	       }
		
		response.sendRedirect(request.getContextPath() + "/index.jsp");
>>>>>>> 3d220014bc2f811661a403b2856a3329f27bdfc2
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
