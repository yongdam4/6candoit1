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
<<<<<<< HEAD
	
	public int insertMember(SqlSession sqlSession, Member m) {
		sqlSession.insert("memberMapper.insertMember", m);
		return 0;
		
	}
	
	public int deleteMember(SqlSession sqlSession, Member m) {
		sqlSession.delete("memberMapper.deleteMember", m);
		return 0;
	}
	
	public int idCheck(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectOne("memberMapper.checkId", userId);		
	}
=======
	// 회원명으로 검색
    public List<Member> searchMembersByName(SqlSession sqlSession, String name) {
        return sqlSession.selectList("memberMapper.searchMembersByName", name);
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
>>>>>>> a6e39b25da0e763a0dfb9dbaf3efaaeca171bd5e
	
}