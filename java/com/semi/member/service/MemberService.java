package com.semi.member.service;

import java.util.List;
import com.semi.member.model.vo.Member;

public interface MemberService {
    public Member loginMember(Member m);  // 관리자 로그인 기능 메서드
    public List<Member> getAllMembers();  // 회원 목록 조회 메서드 
    public List<Member> searchMembersByName(String name);  // 회원명으로 검색
    public List<Member> searchMembersById(String id);      // 아이디로 검색
    public List<Member> searchMembersByGrade(String grade);// 회원 등급으로 검색
    public void deleteMember(String memberId);  // 회원 삭제 메서드 추가
}
