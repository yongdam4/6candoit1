package com.semi.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.semi.board.model.vo.Board;

public class ContactPageDao {

	public Board selectList(SqlSession sqlSession, int ucNo) {
		return sqlSession.selectOne("boardMapper.selectList", ucNo);
	}
	
	public int insertContactList(SqlSession sqlSession, HashMap<String, String> map){
		return sqlSession.insert("boardMapper.insertContactList", map);
	}
}
