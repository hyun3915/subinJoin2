package com.sub.s1.member.memberUser;

import org.apache.ibatis.session.SqlSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberUserDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private final String namespace="com.sub.s1.member.memberUser.MemberUserDAO.";
	

	public MemberUserDTO getMemberLogin(MemberUserDTO memberUserDTO) throws Exception{
		return sqlSession.selectOne(namespace+"getMemberLogin", memberUserDTO);
	}
	
	public MemberUserDTO getMemberIdCheck(MemberUserDTO memberUserDTO) throws Exception{
		return sqlSession.selectOne(namespace+"getMemberIdCheck", memberUserDTO);
	}
	
	
}
