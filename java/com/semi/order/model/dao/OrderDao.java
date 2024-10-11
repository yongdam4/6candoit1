package com.semi.order.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.semi.member.model.vo.Member;
import com.semi.order.model.vo.Order;

public class OrderDao {
	public List<Order> selectAllOrders(SqlSession sqlSession) {
		List<Order> list = sqlSession.selectList("orderMapper.selectAllOrders");
		sqlSession.close();
        return list;
    }
	public List<Order> searchOrdersByStatus(SqlSession sqlSession, String status) {
        return sqlSession.selectList("orderMapper.searchOrdersByStatus", status);
    }

    // 아이디로 검색
    public List<Order> searchOrdersById(SqlSession sqlSession, String id) {
        return sqlSession.selectList("orderMapper.searchOrdersById", id);
    }

}
