package com.semi.member.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.semi.member.service.MemberServiceImpl;

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
<<<<<<< HEAD
		
		int count = new MemberServiceImpl().idCheck(userId);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		boolean isDuplicated = count > 0;		
		String jsonResponse = "{\"isDuplicated\":" + isDuplicated + "}";
		
		response.getWriter().write(jsonResponse);
=======
	      
	      int count = new MemberServiceImpl().idCheck(userId);
	      
	      response.setContentType("application/json");
	      response.setCharacterEncoding("UTF-8");
	      
	      boolean isDuplicated = count > 0;      
	      String jsonResponse = "{\"isDuplicated\":" + isDuplicated + "}";
	      
	      response.getWriter().write(jsonResponse);
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
