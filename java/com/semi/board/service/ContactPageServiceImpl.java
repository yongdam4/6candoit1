package com.semi.board.service;

import org.apache.ibatis.session.SqlSession;

import com.semi.board.model.dao.ContactPageDao;
import com.semi.board.model.vo.Board;
import com.semi.mybatis.common.template.Template;

public class ContactPageServiceImpl implements ContactPageService{
	
	private ContactPageDao cDao = new ContactPageDao();

	@Override
	public int selectList(int ucNo) {
		SqlSession sqlSession = Template.getSqlSession();
		int list = cDao.selectList(sqlSession, ucNo);
		
		sqlSession.close();
		return list;
	}
}
