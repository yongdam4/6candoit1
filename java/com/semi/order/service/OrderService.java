package com.semi.order.service;

import java.util.List;
import com.semi.order.model.vo.Order;

public interface OrderService {
	public List<Order> getAllOrders();  // 주문 목록 조회 메소드
	public List<Order> searchOrdersByStatus(String status);  // 회원명으로 검색
    public List<Order> searchOrdersById(String id);      // 아이디로 검색
}
