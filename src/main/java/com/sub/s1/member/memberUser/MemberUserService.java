package com.sub.s1.member.memberUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberUserService{
	
	@Autowired
	private MemberUserDAO memberUserDAO;
	
	public MemberUserDTO getMemberLogin(MemberUserDTO memberUserDTO)throws Exception{
		return memberUserDAO.getMemberLogin(memberUserDTO);
	}
	
	public MemberUserDTO getMemberIdCheck(MemberUserDTO memberUserDTO) throws Exception{
		return memberUserDAO.getMemberIdCheck(memberUserDTO);
	}
	
	
	
	
}
