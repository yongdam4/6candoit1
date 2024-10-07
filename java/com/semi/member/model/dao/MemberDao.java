package com.semi.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.semi.member.model.vo.Member;

public class MemberDao {
	public Member loginMember(SqlSession sqlSession, Member m) {
		System.out.println(m);
	    Member loginUser = sqlSession.selectOne("memberMapper.loginMember", m);
	    System.out.println("로그인 사용자 정보: " + loginUser); // 디버깅용 로그 출력
	    return loginUser;
	}
}