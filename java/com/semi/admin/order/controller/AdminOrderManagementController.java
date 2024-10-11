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

public class AdminOrderManagementController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private OrderService orderService = new OrderServiceImpl();
       
    public AdminOrderManagementController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	List<Order> orderList = orderService.getAllOrders();
        
        //디버깅테스트용
//        if (memberList != null) {
//            System.out.println("조회된 회원 수: " + memberList.size()); //회원수출력
//            for (Member member : memberList) {
//                System.out.println("회원 정보: " + member); //정보출력
//            }
//        } else {
//            System.out.println("회원 목록이 없습니다.");
//        }

        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("/views/jsp/OrderManagement.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}