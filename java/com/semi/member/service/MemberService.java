package com.semi.member.service;

import java.util.List;
import com.semi.member.model.vo.Member;

public interface MemberService {
    public Member loginMember(Member m);
    public List<Member> getAllMembers(); // 회원 목록 조회 메서드 추가
}
