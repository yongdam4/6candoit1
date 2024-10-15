package com.semi.member.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.semi.member.model.dao.MemberDao;
import com.semi.member.model.vo.Member;
import com.semi.mybatis.common.template.Template;

public class MemberServiceImpl implements MemberService {
    
    private MemberDao mDao = new MemberDao();

    @Override
    public Member adminloginMember(Member m) {
        SqlSession sqlSession = Template.getSqlSession();
        Member loginUser = mDao.adminloginMember(sqlSession, m);
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
		
		System.out.println("Insert Result: " + result);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return result;
	}

	
	@Override
	public int idCheck(String userId) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.idCheck(sqlSession, userId);
		sqlSession.close();
		return result;
	}
	
    // 회원명 검색
    @Override
    public List<Member> adminsearchMembersByName(String name) {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> searchResults = mDao.adminsearchMembersByName(sqlSession, name);
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
    public Member loginMember(Member m) {
        SqlSession sqlSession = Template.getSqlSession();
        Member loginUser = mDao.loginMember(sqlSession, m);
        sqlSession.close();
        return loginUser;
    }

    @Override
    public List<Member> searchMembersByName(String name) {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> membersByName = mDao.findMembersByName(sqlSession, name);
        sqlSession.close();
        return membersByName;
    }

    @Override
    public List<Member> searchMembersByPhone(String phone) {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> membersByPhone = mDao.findMembersByPhone(sqlSession, phone);
        sqlSession.close();
        return membersByPhone;
    }
    
    // 추가된 searchMembersByNameAndPhone 메서드 구현
    @Override
    public List<Member> searchMembersByNameAndPhone(String searchName, String searchPhone) {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> members = mDao.findMembersByNameAndPhone(sqlSession, searchName, searchPhone);
        
        
        sqlSession.close();
        return members;
    }

	@Override
	public int deleteMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteMember(String memberId) {
		// TODO Auto-generated method stub
		
	}



}
