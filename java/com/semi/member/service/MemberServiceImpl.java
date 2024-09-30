package com.semi.member.service;

import org.apache.ibatis.session.SqlSession;

import com.semi.member.model.dao.MemberDao;
import com.semi.member.model.vo.Member;
import com.semi.mybatis.common.template.Template;

public class MemberServiceImpl implements MemberService{
	
	private MemberDao mDao = new MemberDao();

	@Override
	public Member adminloginMember(Member m) {
		
		
		SqlSession sqlSession = Template.getSqlSession();
		Member loginUser = mDao.loginMember(sqlSession, m);
		
		sqlSession.close();
		
		return loginUser;
	}

}
