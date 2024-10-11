package com.semi.admin.order.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.semi.order.model.vo.Order;

public class OrderDao {
	public List<Order> selectAllOrders(SqlSession sqlSession) {
		List<Order> list = sqlSession.selectList("orderMapper.selectAllOrders");
		sqlSession.close();
        return list;
    }

}
