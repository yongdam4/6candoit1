package com.semi.member.model.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.semi.member.model.vo.Member;

public class MemberDao {
	public Member loginMember(SqlSession sqlSession, Member m) {
		System.out.println(m);
	    Member loginUser = sqlSession.selectOne("memberMapper.loginMember", m);
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
	
	
}