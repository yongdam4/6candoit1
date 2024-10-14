package com.semi.member.service;

import java.util.List;
import com.semi.member.model.vo.Member;


public interface MemberService {    

    // 회원가입
    public int insertMember(Member m);
	
    // 회원탈퇴
    public int deleteMember(Member m);
    
    // 아이디 중복체크
    public int idCheck(String userId);
    public Member adminloginMember(Member m);  // 관리자 로그인 기능 메서드
    public List<Member> getAllMembers();  // 회원 목록 조회 메서드 
    public List<Member> adminsearchMembersByName(String name);  // 회원명으로 검색
    public List<Member> searchMembersById(String id);      // 아이디로 검색
    public List<Member> searchMembersByGrade(String grade);// 회원 등급으로 검색
<<<<<<< HEAD
    public void deleteMember(String memberId);  // 회원 삭제 메서드 추가

=======
    public abstract Member loginMember(Member m);

    // 이름으로 회원 검색
    public abstract List<Member> searchMembersByName(String name);

    // 전화번호로 회원 검색
    public abstract List<Member> searchMembersByPhone(String phone);
>>>>>>> 3d220014bc2f811661a403b2856a3329f27bdfc2
}
