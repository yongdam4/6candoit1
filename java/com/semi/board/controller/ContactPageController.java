package com.semi.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.semi.board.model.vo.Board;
import com.semi.board.service.ContactPageService;
import com.semi.board.service.ContactPageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContactPageController
 */
public class ContactPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int ucNo = Integer.parseInt(request.getParameter("ucNo"));
//		ContactPageService cService = new ContactPageServiceImpl();
//		
//		Board c = cService.selectList(ucNo);
//		
//		if(b != null) {
//			request.setAttribute("b", b);
//			request.getRequestDispatcher("views/jsp/ContactPage.jsp").forward(request, response);
//		} else {
//			request.getRequestDispatcher("views/jsp/ContactPage.jsp").forward(request, response);
//		}
		
		request.getRequestDispatcher("views/jsp/ContactPage.jsp").forward(request, response);
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
