package com.semi.order.service;

import java.util.List;

import com.semi.order.model.vo.Order;

public interface OrderService {
	public List<Order> getAllOrders();  // 주문 목록 조회 메소드
}
