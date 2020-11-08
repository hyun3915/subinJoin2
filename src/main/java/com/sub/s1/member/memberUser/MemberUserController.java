package com.sub.s1.member.memberUser;

import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping("/member/**")
public class MemberUserController {
	
	@Autowired
	private MemberUserService memberUserService;
	
	@GetMapping("memberIdCheck")
	public ModelAndView getMemberIdCheck(MemberUserDTO memberUserDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberUserDTO = memberUserService.getMemberIdCheck(memberUserDTO);
		int result = 1;
		if(memberUserDTO==null) {
			result = 0;
		}
		
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	
	@GetMapping(value = "memberLogin")
	public ModelAndView getMemberLogin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberLogin");
		return mv;
	}
	
	@PostMapping(value = "memberLogin")
	public ModelAndView getMemberLogin(MemberUserDTO memberUserDTO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		System.out.println(memberUserDTO.getId());
		memberUserDTO = memberUserService.getMemberLogin(memberUserDTO);
		
		if(memberUserDTO != null) {
			session.setAttribute("member", memberUserDTO);
			mv.setViewName("redirect:../");
		}else {
			//로그인 실패 메시지 alert
			//로그인 입력 폼으로 이동
			//forward
			mv.addObject("msg","로그인에 실패했습니다.");
			mv.addObject("path", "./memberLogin");
			mv.setViewName("common/result");
		}
		
		return mv;
		
	}
	

}
