package com.semi.order.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.semi.admin.order.model.dao.OrderDao;
import com.semi.member.model.vo.Member;
import com.semi.mybatis.common.template.Template;
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

}
