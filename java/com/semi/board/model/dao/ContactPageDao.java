package com.semi.board.model.dao;

import org.apache.ibatis.session.SqlSession;

public class ContactPageDao {

	public int selectList(SqlSession sqlSession, int ucNo) {
		return sqlSession.update("boardMapper.selectList", ucNo);
	}
}
