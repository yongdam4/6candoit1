package com.semi.order.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.semi.mybatis.common.template.Template;
import com.semi.order.model.dao.OrderDao;
import com.semi.order.model.vo.Order;

public class OrderServiceImpl implements OrderService{
	
	private OrderDao oDao = new OrderDao();

	@Override
	public List<Order> getAllOrders() {
		SqlSession sqlSession = Template.getSqlSession();
        List<Order> orderList = oDao.selectAllOrders(sqlSession);
        sqlSession.close();
        return orderList;
	}

	@Override
	public List<Order> searchOrdersByStatus(String status) {
		SqlSession sqlSession = Template.getSqlSession();
        List<Order> searchResults = oDao.searchOrdersByStatus(sqlSession, status);
        sqlSession.close();
        return searchResults;
	}

	@Override
	public List<Order> searchOrdersById(String id) {
		SqlSession sqlSession = Template.getSqlSession();
        List<Order> searchResults = oDao.searchOrdersById(sqlSession, id);
        sqlSession.close();
        return searchResults;
	}

}
