package com.semi.member.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.semi.member.model.vo.Member;

public class MemberDao {
	public Member adminloginMember(SqlSession sqlSession, Member m) {
		System.out.println(m);
		Member loginUser = sqlSession.selectOne("memberMapper.adminloginMember", m);
		sqlSession.close();
		System.out.println("로그인 사용자 정보: " + loginUser); // 디버깅용
		return loginUser;
	}

	public List<Member> selectAllMembers(SqlSession sqlSession) {
		List<Member> list = sqlSession.selectList("memberMapper.selectAllMembers");
		System.out.println(list);
		sqlSession.close();
        return list;
    }
	public int insertMember(SqlSession sqlSession, Member m) {		
		return sqlSession.insert("memberMapper.insertMember", m);		
	}

	public int deleteMember(SqlSession sqlSession, Member m) {
		sqlSession.delete("memberMapper.deleteMember", m);
		return 0;
	}
	
	public int idCheck(SqlSession sqlSession, String userId) {		
		return sqlSession.selectOne("memberMapper.checkId", userId);		
	}
	
	// 회원명으로 검색
    public List<Member> searchMembersByName(SqlSession sqlSession, String name) {
        return sqlSession.selectList("memberMapper.searchMembersByName", name);
    }


	// 회원명으로 검색
	public List<Member> adminsearchMembersByName(SqlSession sqlSession, String name) {
		return sqlSession.selectList("memberMapper.adminsearchMembersByName", name);
	}

	// 아이디로 검색
	public List<Member> searchMembersById(SqlSession sqlSession, String id) {
		return sqlSession.selectList("memberMapper.searchMembersById", id);
	}

	// 등급으로 검색
	public List<Member> searchMembersByGrade(SqlSession sqlSession, String grade) {
		return sqlSession.selectList("memberMapper.searchMembersByGrade", grade);
	}

	public void deleteMember(SqlSession sqlSession, String memberId) {
		sqlSession.delete("memberMapper.deleteMember", memberId);
	}

	public Member loginMember(SqlSession sqlSession, Member m) {
		// 로그인 관련 SQL 처리 로직 (MyBatis 매퍼 호출)
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}

	public List<Member> findMembersByName(SqlSession sqlSession, String name) {
		// 이름으로 회원 검색 SQL 처리 로직 (MyBatis 매퍼 호출)
		return sqlSession.selectList("memberMapper.searchMembersByName", name);
	}

	public List<Member> findMembersByPhone(SqlSession sqlSession, String phone) {
		// 전화번호로 회원 검색 SQL 처리 로직 (MyBatis 매퍼 호출)
		return sqlSession.selectList("memberMapper.searchMembersByPhone", phone);
	}
	
	// 이름과 전화번호로 회원 검색 메서드 추가
    public List<Member> findMembersByNameAndPhone(SqlSession sqlSession, String searchName, String searchPhone) {
        // 이름과 전화번호를 Map으로 묶어서 전달
    	Map<String, String> paramMap = new HashMap<>();
    	paramMap.put("searchName", searchName);
    	paramMap.put("searchPhone", searchPhone);
    	
    	System.out.println("searchName: " + searchName);
        System.out.println("searchPhone: " + searchPhone);

    	
        return sqlSession.selectList("memberMapper.searchMembersByNameAndPhone", paramMap);
    }


}