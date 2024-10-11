package com.semi.board.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.semi.board.model.dao.ContactPageDao;
import com.semi.board.model.vo.Board;
import com.semi.mybatis.common.template.Template;

public class ContactPageServiceImpl implements ContactPageService{
	
	private ContactPageDao cDao = new ContactPageDao();

	@Override
	public Board selectList(int ucNo) {
		SqlSession sqlSession = Template.getSqlSession();
		Board result = cDao.selectList(sqlSession, ucNo);
		
		return result;
	}

	@Override
	public int insertContactList(HashMap<String, String> map) {
		SqlSession sqlSession = Template.getSqlSession();
		int list = cDao.insertContactList(sqlSession, map);
		
		if(list > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return list;
	}
}
