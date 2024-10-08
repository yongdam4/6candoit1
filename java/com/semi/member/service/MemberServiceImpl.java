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

    // 회원명 검색
    @Override
    public List<Member> searchMembersByName(String name) {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> searchResults = mDao.searchMembersByName(sqlSession, name);
        sqlSession.close();
        return searchResults;
    }

    // 아이디 검색
    @Override
    public List<Member> searchMembersById(String id) {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> searchResults = mDao.searchMembersById(sqlSession, id);
        sqlSession.close();
        return searchResults;
    }

    //회원등급
	@Override
	public List<Member> searchMembersByGrade(String grade) {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> searchResults = mDao.searchMembersByGrade(sqlSession, grade);
        sqlSession.close();
        return searchResults;
    }
	
	@Override
	public void deleteMember(String memberId) {
	    SqlSession sqlSession = Template.getSqlSession();
	    mDao.deleteMember(sqlSession, memberId);
	    sqlSession.commit();  // 삭제 후 커밋
	    sqlSession.close();
	}

}
