package com.semi.admin.order.controller;

import java.io.IOException;
import java.util.List;

import com.semi.order.model.vo.Order;
import com.semi.order.service.OrderService;
import com.semi.order.service.OrderServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminOrderSearchController
 */
public class AdminOrderSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private OrderService orderService = new OrderServiceImpl();
       
    public AdminOrderSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // 검색 조건과 검색어 가져오기
        String searchType = request.getParameter("searchType");  // 배송상태, 주문자
        String searchText = request.getParameter("searchText");  // 검색어

        List<Order> searchResults = null;

        // 검색 타입에 따라 주문자 또는 배송상태 검색
        if ("배송상태".equals(searchType)) {
            searchResults = orderService.searchOrdersByStatus(searchText);
        } else if ("주문자".equals(searchType)) {
            searchResults = orderService.searchOrdersById(searchText);
        }

        // 검색 결과를 request에 저장하고 JSP로 전달
        request.setAttribute("orderList", searchResults);
        request.getRequestDispatcher("/views/jsp/OrderManagement.jsp").forward(request, response);
    }
	    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
