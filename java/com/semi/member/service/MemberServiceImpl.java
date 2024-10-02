package com.semi.member.service;

import org.apache.ibatis.session.SqlSession;

import com.semi.member.model.dao.MemberDao;
import com.semi.member.model.vo.Member;
import com.semi.mybatis.common.template.Template;

public class MemberServiceImpl implements MemberService {
    
    private MemberDao mDao = new MemberDao();

    @Override
    public Member loginMember(Member m) {
        SqlSession sqlSession = Template.getSqlSession();
        Member loginUser = mDao.loginMember(sqlSession, m);

        // 이 경우에는 조회만 하고 있으므로 커밋 필요 없음
        sqlSession.close();

        return loginUser;
    }
}
