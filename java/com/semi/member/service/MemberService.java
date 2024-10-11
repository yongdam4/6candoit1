package com.semi.member.service;

import java.util.List;
import com.semi.member.model.vo.Member;

public interface MemberService {
    public Member loginMember(Member m);
    public List<Member> getAllMembers(); // 회원 목록 조회 메서드 추가

    // 회원가입
    public int insertMember(Member m);
	
    // 회원탈퇴
    public int deleteMember(Member m);
    
    // 아이디 중복체크
    public int idCheck(String userId);
}
