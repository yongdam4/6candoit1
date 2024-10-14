package com.semi.member.controller;

import java.io.IOException;

import com.semi.member.service.MemberServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjaxCheckController
 */
public class AjaxCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxCheckController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String userId = request.getParameter("userId");
		
		int count = new MemberServiceImpl().idCheck(userId);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		boolean isDuplicated = count > 0;		
		String jsonResponse = "{\"isDuplicated\":" + isDuplicated + "}";
		
		response.getWriter().write(jsonResponse);
	      
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
