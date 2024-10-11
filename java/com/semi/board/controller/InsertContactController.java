package com.semi.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import com.semi.board.model.vo.Board;
import com.semi.board.service.ContactPageService;
import com.semi.board.service.ContactPageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertContactController
 */
public class InsertContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertContactController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("ucTitle");
		String author = request.getParameter("userId");
		String content = request.getParameter("askDeatil");
		
		HashMap<String, String> map = new HashMap<>();
		map.put("ucTitle", title);
		map.put("userId", author);
		map.put("askDeatil", content);
		
		ContactPageService cService = new ContactPageServiceImpl();
		
		
		int list = cService.insertContactList(map);
		
		if(list > 0) {
			request.setAttribute("alert", "문의글 작성에 성공하였습니다 빠른시일내에 답변 드리겠습니다.");
			request.getRequestDispatcher("MainPage.jsp");
			} else {
			request.setAttribute("alert", "문의글 작성에 실패하였습니다 다시 확인하여주세요");
			request.getRequestDispatcher("views/jsp/ContactPage.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
