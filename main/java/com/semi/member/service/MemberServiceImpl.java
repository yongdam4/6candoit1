package com.semi.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.semi.common.template.Template;
import com.semi.member.model.dao.MemberDao;
import com.semi.member.model.vo.Member;

public class MemberServiceImpl implements MemberService {

    private MemberDao mDao = new MemberDao();

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
    public List<Member> searchMembersByNameAndPhone(String name, String phone) {
        SqlSession sqlSession = Template.getSqlSession();
        List<Member> members = mDao.findMembersByNameAndPhone(sqlSession, name, phone);
        sqlSession.close();
        return members;
    }
}
