package com.semi.member.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.semi.member.model.dao.MemberDao;
import com.semi.member.model.vo.Member;
import com.semi.mybatis.common.template.Template;

public class MemberServiceImpl implements MemberService {
    
    private MemberDao mDao = new MemberDao();

    @Override
    public Member loginMember(Member m) {
        SqlSession sqlSession = Template.getSqlSession();
        Member loginUser = mDao.loginMember(sqlSession, m);
        sqlSession.close();
        return loginUser;
    }

    @Override
    public List<Member> getAllMembers() {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> memberList = mDao.selectAllMembers(sqlSession);
        sqlSession.close();
        return memberList;
    }

	@Override
	public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return result;
	}

	@Override
	public int deleteMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
}
