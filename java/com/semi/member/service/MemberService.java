package com.semi.member.service;

import java.util.List;
import com.semi.member.model.vo.Member;

public interface MemberService {
<<<<<<< HEAD
    public Member loginMember(Member m);
    public List<Member> getAllMembers(); // 회원 목록 조회 메서드 추가

    // 회원가입
    public int insertMember(Member m);
	
    // 회원탈퇴
    public int deleteMember(Member m);
    
    // 아이디 중복체크
    public int idCheck(String userId);
=======
    public Member loginMember(Member m);  // 관리자 로그인 기능 메서드
    public List<Member> getAllMembers();  // 회원 목록 조회 메서드 
    public List<Member> searchMembersByName(String name);  // 회원명으로 검색
    public List<Member> searchMembersById(String id);      // 아이디로 검색
    public List<Member> searchMembersByGrade(String grade);// 회원 등급으로 검색
    public void deleteMember(String memberId);  // 회원 삭제 메서드 추가
>>>>>>> a6e39b25da0e763a0dfb9dbaf3efaaeca171bd5e
}
